## Read about this repo

This repository contains source code to deploy the solution talked about on my website showcasing Azure Storage Actions.
You can find the post [here](https://www.lindbergtech.com/azure-storage-actions-a-preview-service/)

## Deploy the solution
```Bash
git clone git@github.com:carlzxc71/azure-storage-actions-starter.git
az login
az account set -s <sub-id>
cd azure-storage-actions-starter/terraform/
terraform init
terraform plan
terraform apply -auto-approve
```
