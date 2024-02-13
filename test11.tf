#1. Creating an EC2 instance in AWS or creating a compute instance in the GCP using terraform.
#2. Extend the code to create multiple Ec2 or Compute instances in the AWS or GCP with count and without count variable.
3. Adding labels to the AWS Ec2 or GCP  compute instances as a whole (that is all the Ec2 instances will have the same name) and  the labels vary for each Ec2 instance.

provider "aws" {
  region     = ""
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  count         = var.instance_count
  instance_type = "t2.micro"
}

tags = {
    Name ="SERVER01"
  }

variable "instance_count" {
  default = "2"
}
