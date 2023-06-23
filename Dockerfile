FROM node:18.15.0 AS cdk-typescript

WORKDIR /home/node/app

RUN apt-get update && \
    apt-get install -y -qq --no-install-recommends \
    awscli

RUN npm install -g aws-cdk

COPY . .

RUN npm install
