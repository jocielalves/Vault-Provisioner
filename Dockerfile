FROM ubuntu:20.04

WORKDIR /tmp
RUN apt-get update && \
    apt-get install -y curl wget unzip && \
    wget https://releases.hashicorp.com/vault/1.12.0/vault_1.12.0_linux_amd64.zip && \
    unzip vault_1.12.0_linux_amd64.zip && \
    rm vault_1.12.0_linux_amd64.zip && \
    mv /tmp/vault /usr/local/bin/vault

ENV VAULT_ADDR 'http://127.0.0.1:8200'

ENTRYPOINT vault server -dev
EXPOSE 8200