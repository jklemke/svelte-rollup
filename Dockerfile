FROM node:15.1-buster-slim 

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
RUN chown -R node:node /home/node/app/src
RUN chown -R node:node /home/node/app/build

WORKDIR /home/node/app

USER node

COPY  --chown=node:node package*.json ./
COPY --chown=node:node ./rollup.config.js ./rollup.config.js 

RUN npm install
RUN npm build
RUN npm dev
RUN npm sirv

EXPOSE 5000

CMD ["bash"]
