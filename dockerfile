FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV APP_PORT=8084

EXPOSE 8084

CMD ["npm", "start"]  