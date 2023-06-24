FROM node:19

WORKDIR /usr/src/app

COPY ./wiki_view/package*.json ./

RUN npm install
RUN npm install -g nodemon

COPY ./wiki_view .

EXPOSE 3000
CMD ["npm", "start"]
