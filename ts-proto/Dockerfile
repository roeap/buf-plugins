FROM node:16-slim

COPY package.json yarn.lock /opt/plugin/

WORKDIR /opt/plugin

RUN yarn install --frozen-lock

ENTRYPOINT ["./node_modules/ts-proto/protoc-gen-ts_proto"]
