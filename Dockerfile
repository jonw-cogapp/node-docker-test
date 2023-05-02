FROM node:lts-alpine
# FROM node:lts-slim

WORKDIR /home/node/app
COPY --chown=node:node ./ /home/node/app

RUN npm install

USER node

CMD [ "tail", "-f", "/dev/null" ]
