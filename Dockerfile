FROM node:current-alpine3.12

RUN mkdir /var/nodejs-app/

WORKDIR /var/nodejs-app/

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node","server.js"]
