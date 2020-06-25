#version nodejs-10.9.0
#version nginx 1.15
FROM ppdeassis/node-nginx-alpine:latest
#FROM mhart/alpine-node:latest
#FROM mhart/alpine-node:12

# lets install dependencies
WORKDIR /app
COPY . .
CMD ["npm", "start"]
EXPOSE 80
