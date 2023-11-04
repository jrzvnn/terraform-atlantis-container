FROM hashicorp/terraform:light

# Set working directory
WORKDIR /app

# Copy your secret file and shell script to the image
COPY .env /app/.env
COPY run-destroy.sh /app/run-destroy.sh

# Install required dependencies (e.g., git)
RUN apk update && apk add --no-cache git

# Clone the desired Terraform repository from GitHub
RUN git clone https://github.com/devkinetics/devops-atlantis-fargate.git

# Set entrypoint
RUN chmod +x /app/run-destroy.sh
ENTRYPOINT ["/app/run-destroy.sh"]

