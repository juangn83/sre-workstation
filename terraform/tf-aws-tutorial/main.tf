terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

# default username for AMI Amazon linux: ec2-user
# default username fir AMI Debian: admin
resource "aws_instance" "kube-control" {
  ami           = var.default_ami
  instance_type = "t3.xlarge"
  subnet_id = var.kube_subnet
  associate_public_ip_address = true
  vpc_security_group_ids = [var.security_group]
  key_name = "k8s-cluster-lab-access"
  tags = {
    Name = var.instance_name
  }
}

resource "aws_instance" "kube-worker-1" {
  ami = var.default_ami
  instance_type = "t3.small"
  subnet_id = var.kube_subnet
  associate_public_ip_address = true
  vpc_security_group_ids = [var.security_group]
  key_name = "k8s-cluster-lab-access"
  tags = {
    Name = var.worker1_name
  }
}

resource "aws_instance" "kube-worker-2" {
  ami = var.default_ami
  instance_type = "t3.small"
  subnet_id = var.kube_subnet
  associate_public_ip_address = true
  vpc_security_group_ids = [var.security_group]
  key_name = "k8s-cluster-lab-access"
  tags = {
    Name = var.worker2_name
  }
}
resource "aws_instance" "kube-worker-3" {
  ami = var.default_ami
  instance_type = "t3.small"
  subnet_id = var.kube_subnet
  associate_public_ip_address = true
  vpc_security_group_ids = [var.security_group]
  key_name = "k8s-cluster-lab-access"
  tags = {
    Name = var.worker3_name
  }
}