# terraform-gcp-networking
This repo creates the infrastructure in Google Cloud Platform by using the project created from `tf-gcp-org` repository.

## Requirements
1. GCP Account
2. Organization Setup
3. GCP project
4. gcloud
5. Terraform
6. SSH key

## Login to gcloud
``` gcloud auth application-default login ```

## Terraform commands

terraform init - initialize a working directory and configure terraform files

``` terraform init ```

terraform plan - Creates a plan to view changes before applying

``` terraform plan -var="project_id=<project-id>" -var="public_key=<ssh-key-address>" -var="ssh_username=<ssh-username>" ```

terraform apply - Applies the planned changes

``` terraform apply -var="project_id=<project-id>" -var="public_key=<ssh-key-address>" -var="ssh_username=<ssh-username>" ```