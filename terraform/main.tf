
provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "~/.aws/credentials"
  # profile                 = "development"
  # private_key_path = "~/vilas.pem"
}

