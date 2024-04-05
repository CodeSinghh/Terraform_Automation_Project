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

- As we've created these important files, Now this are the services that we have to create

**Network Setup**:
- **Custom VPC**: A Virtual Private Cloud (VPC) is created to isolate the infrastructure logically and provide network control.
- **Public Subnets**: Two public subnets are defined within the VPC to host the web servers and provide connectivity to the internet.
- **Public Route Table**: A route table is configured to direct traffic from the public subnets to the internet gateway.
- **Internet Gateway**: An internet gateway is attached to the VPC to enable outbound internet access for the public subnets.
- **Load Balancer**: A load balancer is deployed to distribute incoming traffic among multiple EC2 instances for improved reliability and scalability.

- *For network-related Terraform files, please navigate to the VPC folder. For load balancer files, please head to the Load Balancer folder, where you can find all the necessary folders.*

**Compute Resources**:
- **EC2 Instances**: EC2 instances are provisioned in each public subnet, each running an Apache2 web server to serve web content. These instances form the web tier of the infrastructure.

- *For EC2 releated Terraform files, please navigate to the EC2 folder where you can find all the necessary folders.*
- *In EC2 folder you will find name userdata and userdata1 and they are bash script used as user data for initializing an Amazon EC2 instance. It performs the following actions:*

1. `yum update -y`: Updates the package manager to ensure the system is up-to-date.
2. `yum install -y httpd`: Installs the Apache HTTP server (httpd) on the instance.
3. `systemctl start httpd`: Starts the Apache HTTP server.
4. `systemctl enable httpd`: Enables the Apache HTTP server to start automatically on system boot.
5. `echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html`: Writes an HTML file with the content "Hello World" and the hostname of the instance to `/var/www/html/index.html`. This HTML file will be served by the Apache HTTP server, displaying a "Hello World" message when accessing the instance's public IP or DNS.

Overall, this script sets up and starts the Apache HTTP server on the EC2 instance and creates a basic HTML file to serve as a landing page.

**Storage**:
- **S3 Bucket**: An S3 bucket may be optionally configured for storing static website assets, providing cost-effective and scalable storage for web content.
- *For S3 releated Terraform files, please navigate to the s3 folder where you can find all the necessary folders.*
