#!/bin/sh

# Load environment variables from .env file
source /app/.env

# Export AWS credentials as environment variables
export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY

# Export GitHub credentials as environment variables
export GITHUB_USER
export GITHUB_TOKEN

# Change directory to the cloned repository
cd /app/devops-atlantis-fargate

# Terraform initialization
terraform init

# Terraform apply
terraform apply -auto-approve
