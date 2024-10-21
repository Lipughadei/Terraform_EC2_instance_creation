# Terraform_EC2_instance_creation
To create an AWS EC2 instance using Terraform, follow these steps:

Step 1: Install Terraform and set up your AWS credentials

Make sure you have Terraform installed on your machine. You'll also need to set up your AWS credentials. You can do this by creating a file named ~/.aws/credentials with the following format:

==========================================================================================================================

[default]
aws_access_key_id = YOUR_ACCESS_KEY
aws_secret_access_key = YOUR_SECRET_KEY
Replace YOUR_ACCESS_KEY and YOUR_SECRET_KEY with your actual AWS access key and secret key.

Step 2: Create a Terraform configuration file

Create a new file named main.tf with the following code:

===============================================================================================================================================

terraform
# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

# Create a new EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
}
This code configures the AWS provider and creates a new EC2 instance with the specified AMI and instance type.

Step 3: Initialize Terraform

Run the following command to initialize Terraform:

==============================================================================================================================================

bash
terraform init
This command will download and install the AWS provider.

Step 4: Apply the Terraform configuration

Run the following command to apply the Terraform configuration:

==========================================================================================================================================

bash
terraform apply
This command will create the EC2 instance specified in the main.tf file.

Step 5: Verify the instance creation

You can verify that the instance was created successfully by checking the AWS Management Console or by running the following command:

===============================================================================================================================================

bash
terraform show
This command will display the details of the EC2 instance created by Terraform.

That's it! You've successfully created an AWS EC2 instance using Terraform.

==============================================================================================================================================

-> First you have to create a directory like my-terraform-project
mkdir my-terraform-project

-> then create a file name main.tf
vi main.tf

-> goto the location where main.tf is present and then run
terraform init
terraform apply
