FROM tecstub/docker-toolbox:latest
FROM python:3.7-alpine
RUN apk add --update --no-cache g++ gcc libxslt-dev docker
RUN pip install terraenv
