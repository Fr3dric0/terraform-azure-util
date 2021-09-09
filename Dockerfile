FROM mcr.microsoft.com/azure-cli:2.28.0

ARG TERRAFORM_VERSION="1.0.6"
ARG KUBECTL_VERSION="v1.20.5"

WORKDIR /home

RUN apk add --update --no-cache \
    curl \
    bash

RUN curl -o terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    echo "terraform.zip" | unzip terraform.zip && mv terraform /usr/local/bin && rm terraform.zip

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

ENTRYPOINT [""]
