FROM node:22.9 AS build

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

RUN yarn run build
RUN yarn --production && yarn cache clean

FROM node:22.9.0-alpine3.20

WORKDIR /app

COPY --from=build /app/dist ./dist
COPY --from=build /app/package.json ./package.json
COPY --from=build /app/node_modules ./node_modules

EXPOSE 3000

CMD ["yarn", "run", "start:prod"]
