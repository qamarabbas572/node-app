FROM node:12-alpine

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY . .


EXPOSE 3000

CMD [ "node", "index.js" ]
