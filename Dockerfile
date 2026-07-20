# Stage 1: Build app
FROM node:22.21.1-alpine3.21 AS builder
WORKDIR /app
RUN npm i -g mintlify

COPY package*.json ./
ENV HUSKY=0

COPY . .

# Run app

EXPOSE 3000
CMD ["mintlify",  "dev"]
