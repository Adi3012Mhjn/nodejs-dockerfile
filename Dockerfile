FROM ppdeassis/node-nginx-alpine:latest

# lets install dependencies
WORKDIR /app
COPY . .
CMD ["node", "index.js"]
EXPOSE 80
