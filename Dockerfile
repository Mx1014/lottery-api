FROM node:8.6.0
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
ENV PORT 3000
EXPOSE 3000
ENTRYPOINT node server.js
