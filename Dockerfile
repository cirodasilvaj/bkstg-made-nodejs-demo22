FROM node:20-alpine

LABEL org.opencontainers.image.source="https://github.com/cirodasilvaj/bakstg-nodejs-demo2"

WORKDIR /app
COPY package.json server.js ./

ENV PORT=8080 \
    APP_NAME="bakstg-nodejs-demo2" \
    FLUENTD_HOST="fluentd.logging.svc.cluster.local" \
    FLUENTD_PORT="24224"

EXPOSE 8080
CMD ["node", "server.js"]
