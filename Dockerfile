FROM hashicorp/terraform:0.13.1

ARG KUBECTL_VERSION="v1.19.0"

WORKDIR /home

RUN apk add --update --no-cache \
    curl \
    bash

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

