FROM node:latest

USER node
RUN mkdir /home/node/bot
WORKDIR /home/node/bot

COPY --chown=node:node ./package.json /home/node/bot
RUN npm install

COPY --chown=node:node . /home/node/bot

EXPOSE 3333

CMD ["node", "index.js"]