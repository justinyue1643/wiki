FROM node:12

WORKDIR server/

COPY ./wiki/package*.json ./
RUN npm install

COPY ./wiki

WORKDIR ./server

EXPOSE 443


docker pull requarks/wiki

CMD [ "forever start", "server/index.js"]
