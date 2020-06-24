provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}
# Additional provider configuration for west region
provider "aws" {
  alias      = "west"
  region     = "us-west-1"
  access_key = var.access_key
  secret_key = var.secret_key
}