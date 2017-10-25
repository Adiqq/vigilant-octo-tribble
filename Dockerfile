FROM node

RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build

FROM nginx
WORKDIR /usr/share/nginx/html
COPY --from=0 /app/build .