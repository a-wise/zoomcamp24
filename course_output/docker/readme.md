
Check docker is installed 
` docker run hello-world`

Next try
`docker run -it ubuntu bash`
-it = run in interactive mode, so we can type stuff in ubuntu bash prompt
then `exit` to leave

Now we can do something like
`docker run -it python:3.9`
this will run a python 3.9 environment, and will now be in python.

`docker run -it --entrypoint=bash python:3.9`
Now we can run pip install comands and general terminal stuff, but only for this session.

We use docker file to specify what we need
`FROM python:3.9

RUN pip install pandas

ENTRYPOINT [ "bash" ]`

Start with from, saying we want python, then install pandas using bash entry point.
`docker build -t test:pandas . ` this would give image name test:pandas, and . means looking in this directory for dockerfile
Once built, `docker run -it test:pandas`, this will open at a bash prompt, and if we check python it'll have pandas in it.

Now we make a python file, and will use that.
Use `COPY pipeline.py pipeline.py` to copy the file from our working directort to the docker directory
Specific workdirectory, which is where in docker it'll be `WORKDIR /app` , this will do cd ./app and go here then copy the file.

`FROM python:3.9

RUN pip install pandas

WORKDIR /app
COPY pipeline.py pipeline.py

ENTRYPOINT [ "bash" ]`

Lets expand pipeline file, it now gets the day. 
We want docker to execute this so we change entry point `ENTRYPOINT [ "python", "pipeline.py" ]` when we run the imgage it'l run the pipeline. 
So, if we run `docker run -it test:pandas 2022-01-01` it'll run for that day

