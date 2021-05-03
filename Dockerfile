FROM node:14-alpine

LABEL org.opencontainers.image.source https://github.com/myronrotter/ghcr-example

RUN mkdir /app
WORKDIR /app

COPY ./package*.json ./
RUN npm i

COPY ./index.js ./

CMD npm start
