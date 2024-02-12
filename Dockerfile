# Stage 1 build
FROM node:18-alpine as builder

WORKDIR /app
COPY package.json ./

RUN npm install
COPY . .
RUN npm run build
