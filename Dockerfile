# Use an official Ubuntu base image
FROM ubuntu:20.04 as conjur-cli

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Copy the Conjur CLI .deb package into the container
COPY ./conjur-cli-go_8.0.15_amd64.deb conjur-cli-go_8.0.15_amd64.deb

# Update the package list and install dpkg and other necessary packages
RUN apt-get update && \
    apt-get install -y dpkg apt-transport-https ca-certificates curl software-properties-common gnupg

# Install the Conjur CLI from the .deb package
RUN dpkg -i conjur-cli-go_8.0.15_amd64.deb && \
    apt-get install -f -y

# Remove the Conjur CLI .deb package to clean up
RUN rm conjur-cli-go_8.0.15_amd64.deb

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Install Helm
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && \
 chmod 700 get_helm.sh && \
 ./get_helm.sh


# Verify installations (optional)
RUN conjur --version && \
    kubectl version --client && \
    helm version

# Set the entrypoint
ENTRYPOINT ["/bin/bash"]
