FROM node:16.20-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY . .

COPY package*.json ./

RUN npm install

#EXPOSE 3001

CMD [ "node", "/home/node/app/index.js" ]
