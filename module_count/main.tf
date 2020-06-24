# ec2 aws west count
module "ec2-west-count" {

  providers = {
    aws = aws.west
  }

  source = "./ec2-east"
  ami    = var.ami_west

  count = 1
}

# ec2 for_each using the default provider - "us-east-1"
module "ec2-east-for-each" {
  source   = "./ec2-east"
  for_each = var.ami_for_each
  ami      = each.value
}

variable "ami_for_each" {

  type = map
  default = {
    ami1 = "ami-0f4225da3a1e24a51"
    ami2 = "ami-0cc2b036435209c9e"
    
  }
}