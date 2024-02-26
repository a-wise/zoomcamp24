docker compose is a way of running multiple docker images.  

building our docker command for postgres
docker run -it \
  -e POSTGRES_USER="root" \
  -e POSTGRES_PASSWORD="root" \
  -e POSTGRES_DB="ny_taxi" \
  -v $(pwd)/ny_taxi_postgres_data:/var/lib/postgresql/data \
  -p 5432:5432 \
 postgres:13

-e is for environment 
volumes maps folder on our system onto that in docker, map folder on our machine to docker, this called mounting
- v for mounting
- p to specify port on host maching to container

To access, install pgcli, `pgcli --help` check it works
`pgcli -h localhost -p 5432 -u root -d ny_taxi`
now connected to postgres and can run queries.


Download data `wget https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz`
save 100 rows to view `head -n 100 yellow_tripdata_2021-01.csv.gz > yellow_head.csv`  
We can count how many lines in original file `wc -l yellow_tripdata_2021-01.csv.gz`

In pgcli `\d table_name` will describe table