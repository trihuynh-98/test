FROM node:16.20-alpine

RUN mkdir -p /app && chown -R node:node /app

WORKDIR /app

COPY . /app

RUN npm install

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]