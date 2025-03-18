FROM node:22.14.0-alpine3.21

WORKDIR /usr/app

RUN npm install -g @nestjs/cli

COPY ./zapTable-backend/package*.json .

RUN npm install

COPY ./zapTable-backend ./

RUN npm run build

CMD npm install; npm run start:dev