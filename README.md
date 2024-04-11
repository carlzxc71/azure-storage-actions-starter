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
