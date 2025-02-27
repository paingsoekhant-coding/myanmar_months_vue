FROM node:20.11.0-alpine3.19

WORKDIR /myanmar-months

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm","run","dev" ]
