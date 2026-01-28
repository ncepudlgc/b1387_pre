FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    openssh-client \
    git \
    vim \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Ansible
RUN pip install --no-cache-dir ansible==8.7.0

# Create a working directory
WORKDIR /ansible

# Copy the project files
COPY . /ansible/

# Set the default shell
CMD ["/bin/bash"]