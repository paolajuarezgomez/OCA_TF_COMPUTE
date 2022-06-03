#  Deploy compute image

## ✅ Showcase

During this UseCase we're going to:
* Deploy IaC using Terraform.

## ✅ Usage

* Clone this repo in GitHub and create you own repository.
* We are going to deploy a compute instance , we can choose the status of all the plug-ins for the cloud agent.
* Add your **api_private_key** to the file **user.pem** in the key directory
* Add your **ssh public** in the key directory, it will be used to connect to the compute instance.
* Rename the file **terraform.tfvars.template** to **terraform.tfvars** and add the proper values
* Define the values desired in the  **compute.auto.tfvars** 
* Run terraform:


Terraform init
Terraform plan 
Terraform apply --auto-approve

