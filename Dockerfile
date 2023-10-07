FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY ./app .

EXPOSE 3000

ENV MONGODB_URI mongodb://mongo_host:27017/mongodb_mydb             # to comnnecting nongodb
ENV REDIS_HOST redis_host
ENV REDIS_PORT 6379

CMD ["node", "app.js"]
