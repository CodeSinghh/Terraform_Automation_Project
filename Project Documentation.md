### Prerequisites

Before proceeding with the setup, ensure you have the following prerequisites:

- **Integrated Development Environment (IDE) with Terraform**: Install an IDE such as Visual Studio Code that supports Terraform usage, or any other IDE of your preference.

- **Access to AWS Account**: Obtain access to an AWS account to deploy resources.

- **Proficiency in AWS Console**: Have proficiency in using the AWS console to deploy resources, set user roles, and define policy permissions as required for your infrastructure.

- **Proficiency in Terraform Coding**: Have proficiency in writing Terraform code to define and manage infrastructure configurations

- **Basic Terminal Knowledge**: Familiarize yourself with basic terminal commands, such as navigating directories (cd) and creating directories (mkdir).

**These prerequisites will help facilitate a smooth and efficient setup process.**

## So let's start at first we are going to look at : 

### Organization with Modules

- *I use modules to help organize and make changes to the infrastructure easier. They keep things neat and make it quicker to find and fix mistakes.*
- **The overall directory/file structure looks something like this ⤵️**

![image](https://github.com/CodeSinghh/Terraform_Automation_Project/assets/116664961/1ed1dea5-c571-4487-9d4f-6e748f309c07)


- ### **And then we'll discuss the providers.tf file, which indicates the cloud provider we're using. You can verify this in the repository, where a file named provider.tf is uploaded**

- ### **After that, we created the main.tf file. This file serves as the main configuration file for defining the infrastructure components. You can find it in this repository under the name main.tf**

