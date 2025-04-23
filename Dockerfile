FROM node:16.20-alpine

RUN apk add --no-cache python3 make g++

RUN mkdir /app && chown -R node:node /app

WORKDIR /app

COPY --chown=node:node  package*.js /app/

COPY --chown=node:node index.js ./

COPY --chown=node:node entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]