FROM node:20.11.1-alpine3.19 AS build

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

ENV PATH /app/node_modules/.bin:$PATH

COPY . .

RUN npm run build
