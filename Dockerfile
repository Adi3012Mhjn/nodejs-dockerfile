#version nodejs-10.9.0
#version nginx 1.15
FROM ppdeassis/node-nginx-alpine:latest
#FROM mhart/alpine-node:latest
#FROM mhart/alpine-node:12

#ARG NODE_ENV=production
#ENV $NODE_ENV

# lets install dependencies
WORKDIR /app
COPY ./package.json ./app
RUN npm install
COPY . .
CMD ["node", "index.js"]
EXPOSE 80
