FROM node:latest-alpine
RUN apk add openrc --no-cache
RUN npm install -g pm2@latest 
RUN pm2 install typescript
