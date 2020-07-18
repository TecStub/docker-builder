FROM python:3.7-alpine
RUN apk add --update --no-cache g++ gcc libxslt-dev docker jq make
ADD https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.7/2020-07-08/bin/linux/amd64/aws-iam-authenticator /usr/local/bin/aws-iam-authenticator
ADD https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.7/2020-07-08/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN pip install terraenv awscli==1.14.5
