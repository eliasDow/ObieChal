FROM node:12-alpine
WORKDIR /usr/app

COPY package.json .
COPY package-lock.json .

COPY . .

RUN npm install
RUN ls -a
EXPOSE 3000

CMD node index.js