FROM node:22-alpine

# System deps for sharp & sqlite
RUN apk update && apk add --no-cache \
  build-base gcc autoconf automake \
  zlib-dev libpng-dev vips-dev git bash

ENV NODE_ENV=production

WORKDIR /opt/app

# Copy only package files first
COPY package.json package-lock.json ./

# Install deps INSIDE container (Linux binaries)
RUN npm install -g node-gyp
RUN npm install

# Now copy app source (without node_modules)
COPY . .

RUN chown -R node:node /opt/app
USER node

EXPOSE 1337

CMD ["npm", "run", "start"]

