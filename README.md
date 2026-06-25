# aws-terraform-bootstrap

One-time Terraform to provision the shared S3 bucket used for Terraform remote state across all projects in the AWS account.

## What it creates

- S3 bucket `terraform-state-<account_id>` with versioning, AES256 encryption, and public access blocked

This bucket is shared across **all project repos** in the account. Each project stores its state under a unique key prefix — never modify another project's state key.

## Usage

Run once per AWS account. After the bucket exists, all other projects use it via Terragrunt remote state.

```bash
terraform init
terraform apply
```

## Requirements

- AWS CLI profile: `342831714456_Workload-Admin-PS`
- Terraform >= 1.5
- AWS provider ~> 5.0
