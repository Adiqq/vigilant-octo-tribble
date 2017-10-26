FROM node

RUN mkdir -p /app
RUN npm config set registry http://adwa.westeurope.cloudapp.azure.com:30010/repository/npm/
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build

FROM nginx
WORKDIR /usr/share/nginx/html
COPY --from=0 /app/build .