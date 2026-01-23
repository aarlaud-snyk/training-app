FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install
RUN touch test
RUN touch test2

COPY . .

EXPOSE 3300

CMD ["node", "index.js"]
