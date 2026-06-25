terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

variable "aws_region" {
  type    = string
  default = "il-central-1"
}

variable "aws_profile" {
  type    = string
  default = "342831714456_Workload-Admin-PS"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
