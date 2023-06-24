FROM node:18.15.0 AS cdk-typescript

WORKDIR /home/node/app

RUN apt-get update && \
    apt-get install -y -qq --no-install-recommends \
    awscli

RUN npm install -g npm@9.7.2 aws-cdk

COPY package.json ./package.json

RUN npm install

COPY . ./
