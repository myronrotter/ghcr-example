FROM node:14-alpine

RUN mkdir /app
WORKDIR /app

COPY ./package*.json .
RUN npm i

COPY ./index.js .

CMD npm start
