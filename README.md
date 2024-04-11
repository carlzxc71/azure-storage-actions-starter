## Deploy the solution
```Bash
az login
az account set -s <sub-id>
cd terraform/
terraform init
terraform plan
terraform apply -auto-approve
```
