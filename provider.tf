terraform {
  required_version = ">= 0.14.11"
}
provider "aws" {
  region  = "us-east-1"
  profile = "kubeadriano"
}