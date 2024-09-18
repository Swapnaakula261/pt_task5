terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Use your default region
}

resource "aws_instance" "medusa_akula" {
  ami           = "ami-0e86e20dae9224db8"  # Replace with the AMI ID of your instance
  instance_type = "t2.micro"
  key_name      = "akula_key"  # Your key pair name

  tags = {
    Name = "medusa_akula"
  }
}
 
