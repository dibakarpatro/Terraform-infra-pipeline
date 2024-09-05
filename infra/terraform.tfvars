bucket_name = "dev-proj-1-remote-state-bucket"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
us_availability_zone = ["us-east-1a", "us-east-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDXGhjP7MgwQdAQo3alyucBdTrNGlmReCxtIHAzNoFRBn3aKjTKB0a2IdA+A+O2PHfjbZyzKJZVfW1qIKga73uOI12knj5KNdCI29aT+FSBFERsSzSFTXUtyXiIFBguUjNeuTjbj/y7ABv2KRw9hps7i9fsNsU9tvrpe+MK1KruH6XBKniAMB4adu5gjJRs8xrjlDPDyofi5CRD3uWf+kHsaOKd3JLXtMCq6wGObybEm/6jFx4T7Bnh4Qy4pId3YuhDH7zJNmR/H5ehGwdMkweOMH9o48UX3LPXXvI9Q1OpSMb5pa5fIq/c8bk5OYVfy5IgwK9/I1x1HDle6N5062T linux-key"
ec2_ami_id     = "ami-0e86e20dae9224db8"

ec2_user_data_install_apache = ""

domain_name = "dibakarcloud.shop"
