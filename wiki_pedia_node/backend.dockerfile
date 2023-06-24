FROM node:19

WORKDIR /usr/src/app

COPY ./wiki_pedia_node/package*.json ./

RUN npm install
RUN npm install -g nodemon

COPY ./wiki_pedia_node .

EXPOSE 3000
CMD ["sh", "-c", "npx sequelize-cli db:migrate && npm start"]
