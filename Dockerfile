# https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md
# docker build -t gggabrielx/elevation-service-hosted .
# docker run --rm -p 8080:8080 gggabrielx/elevation-service-hosted
# docker run --restart always -p 8080:8080 gggabrielx/elevation-service-hosted

FROM node:8

WORKDIR /app
RUN mkdir data
RUN chown node data

COPY package.json .
COPY yarn.lock .
RUN yarn install

COPY index.js .

USER node
CMD ["/app/node_modules/micro/bin/micro.js", "--listen", "tcp://0.0.0.0:8080"]
