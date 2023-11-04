# Terraform Atlantis Container

This repository contains Dockerfiles and scripts to set up Terraform with Atlantis for managing infrastructure on AWS Fargate. Atlantis is a tool that automates Terraform workflows via pull requests on your Git repository.

## Prerequisites

Before using this repository, you should have the following prerequisites in place:

1. AWS Access and Secret Access Key for Terraform operations.
2. GitHub credentials for authentication.
3. Docker installed on your system.

## .env File

Create a `.env` file in both the `create/` and `destroy/` directories, and provide the following variables:

```
AWS_ACCESS_KEY_ID=YOUR_AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY=YOUR_AWS_SECRET_ACCESS_KEY
GITHUB_USER=YOUR_GITHUB_USERNAME
GITHUB_TOKEN=YOUR_GITHUB_PERSONAL_ACCESS_TOKEN
```


Replace `YOUR_AWS_ACCESS_KEY_ID`, `YOUR_AWS_SECRET_ACCESS_KEY`, `YOUR_GITHUB_USERNAME`, and `YOUR_GITHUB_PERSONAL_ACCESS_TOKEN` with your actual credentials.

## Dockerfiles

There are two Dockerfiles provided in this repository: one for creating resources `create/` and another for destroying resources `destroy/`.

### Building the Dockerfiles

To build the Dockerfiles, navigate to the respective directory and run the following command:

```sh
docker build -t atlantis-create .
# or
docker build -t atlantis-destroy .
```

### Docker Container Execution

To run Terraform with Atlantis for creating resources:

```sh
docker run atlantis-create
```
To run Terraform with Atlantis for destroying resources:
```sh
docker run atlantis-destroy
```

