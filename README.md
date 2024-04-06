# Secure Scalable AWS Web Deployment with Terraform Automation

**Description**:

This Terraform project automates the deployment of a scalable website's infrastructure on Amazon Web Services (AWS). It leverages Terraform's infrastructure-as-code capabilities to define and provision the necessary resources in a manageable way. The infrastructure setup encompasses networking, compute, storage, and security components, ensuring a robust and secure environment for hosting website

**Network Setup**:
- **Custom VPC**: A Virtual Private Cloud (VPC) is created to isolate the infrastructure logically and provide network control.
- **Public Subnets**: Two public subnets are defined within the VPC to host the web servers and provide connectivity to the internet.
- **Public Route Table**: A route table is configured to direct traffic from the public subnets to the internet gateway.
- **Internet Gateway**: An internet gateway is attached to the VPC to enable outbound internet access for the public subnets.
- **Load Balancer**: A load balancer is deployed to distribute incoming traffic among multiple EC2 instances for improved reliability and scalability.

**Compute Resources**:
- **EC2 Instances**: EC2 instances are provisioned in each public subnet, each running an Apache2 web server to serve web content. These instances form the web tier of the infrastructure.

**Storage**:
- **S3 Bucket**: An S3 bucket may be optionally configured for storing static website assets, providing cost-effective and scalable storage for web content.

**Security Configuration**:
- **Security Groups**: Security groups are defined to control inbound and outbound traffic to the EC2 instances. A security group allowing HTTP (port 80) and SSH (port 22) access is applied to the public subnets, ensuring only necessary traffic is permitted.
