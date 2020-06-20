#version nodejs-10.9.0
#version nginx 1.15
#FROM ppdeassis/node-nginx-alpine:latest
FROM mhart/alpine-node:latest

# lets install dependencies
WORKDIR /app
COPY . .
CMD ["node", "index.js"]
EXPOSE 80
