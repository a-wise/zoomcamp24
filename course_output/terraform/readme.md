### Execution

```shell
# Refresh service-account's auth-token for this session, if not using service json
gcloud auth application-default login

# Initialize state file (.tfstate)
terraform init
    * Initializes & configures the backend, installs plugins/providers, & checks out an existing configuration from a version control 
# Check changes to new infra plan

terraform plan -var="project=<your-gcp-project-id>"
```
 * Matches/previews local changes against a remote state, and proposes an Execution Plan.
```shell

# Create new infra
terraform apply -var="project=<your-gcp-project-id>"
```
* Asks for approval to the proposed plan, and applies changes to cloud

```shell
# Delete infra after your work, to avoid costs on any running services
terraform destroy
```
* Removes your stack from the Cloud