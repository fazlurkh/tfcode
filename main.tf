terraform {
  required_version = ">= 0.15"
  required_providers {
    local ={
        source = "hashicorp/local"
        version = "~>2.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-instance" {
   ami          = "ami-0729e439b6769d6ab"
  instance_type = "t2.micro"
}
