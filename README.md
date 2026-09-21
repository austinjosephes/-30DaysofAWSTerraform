# 30 Days of Terraform 🚀

Learning Terraform from scratch in 30 days, with the goal of managing AWS infrastructure entirely as code.

## Goal
By day 30, I want to build a multi-tier AWS environment (VPC, EC2, S3, IAM, RDS/ALB) using reusable modules and remote state, and be able to destroy and recreate it with one command.

## Tech Stack
- Terraform
- AWS
- Git & GitHub

## Progress Tracker
| Week | Focus | Status |
|------|-------|--------|
| 1 | Terraform basics: providers, resources, variables, outputs | ⬜ |
| 2 | State, data sources, AWS networking (VPC, subnets) | ⬜ |
| 3 | Modules, EC2, S3, IAM | ⬜ |
| 4 | Remote state, RDS/ALB, final project | ⬜ |

## Repo Structure
- `day-01/` ... `day-30/`: configs and notes for each day
- `projects/`: larger hands-on builds

## How to Use
1. Install Terraform and the AWS CLI
2. Configure credentials with `aws configure`
3. `cd` into a day's folder, then run `terraform init` and `terraform plan`

## Notes
Learning in public, so expect mistakes and refactors along the way.
