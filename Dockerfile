FROM python:3.8-alpine

LABEL "com.github.actions.name"="S3 Sync"
LABEL "com.github.actions.description"="Sync dir or files to an AWS S3 bucket"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

# LABEL version="0.5.1"
LABEL repository="https://github.com/marcbacchi/s3-sync-action"
LABEL homepage="https://marcbacchi.dev"
LABEL maintainer="Marc Bacchi <bacchimarc@pm.me>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='2.4.15'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
