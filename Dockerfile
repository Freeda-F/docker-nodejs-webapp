FROM alpine:3.8

RUN mkdir /var/nodejs-app/

WORKDIR /var/nodejs-app/

COPY . .

RUN apk update && apk add --no-cache nodejs npm

RUN npm install

EXPOSE 3000

CMD ["node","server.js"]
