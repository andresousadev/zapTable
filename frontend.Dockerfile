FROM node:22.14.0-alpine3.21

WORKDIR /usr/app

RUN npm install -g next@latest react@latest react-dom@latest

COPY ./zapTable-frontend/package*.json .

RUN npm install

COPY ./zapTable-frontend ./

RUN npm run build

CMD npm install; npm run dev