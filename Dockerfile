FROM node:12-alpine
RUN apk add openrc --no-cache
RUN npm install -g pm2@latest 
RUN pm2 install typescript
WORKDIR /app
ADD . /app
RUN yarn
# Installing Node Modules and adding it to VOLUME (Meaning it will sit in the image)
VOLUME ["/app"]
CMD ["yarn", "start"]
EXPOSE 3009