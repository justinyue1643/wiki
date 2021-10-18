FROM node:12

WORKDIR server/

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 443

CMD [ "forever start", "server/index.js"]
