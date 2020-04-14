FROM node:12-alpine
WORKDIR /usr/app

COPY ./api/package.json .
COPY ./api/package-lock.json .

RUN npm install

COPY ./api .
RUN ls -a

EXPOSE 3000

CMD node index.js