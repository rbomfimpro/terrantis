FROM runatlantis/atlantis:v0.28.3@sha256:b35c839a0d4673f0aaa99bfa5176e7d62c79812a3f311d179393aae3c7acc2d8

ENV TERRAGRUNT_VERSION v0.59.7

USER ROOT

RUN apk add --no-cache curl git bash && \
    curl -sLo /usr/local/bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 && \
    chmod +x /usr/local/bin/terragrunt && \
    terragrunt --version

USER atlantis