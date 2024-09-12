# Resource: aws_vpc
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/16"

  # Required for EKS. Enable/disable DNS hostnames in the VPC.
  enable_dns_hostnames = true

}
