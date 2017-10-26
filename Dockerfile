FROM node

RUN mkdir -p /app
RUN npm config set registry http://adwa.westeurope.cloudapp.azure.com:30010/repository/npm/
RUN yarn config set registry http://adwa.westeurope.cloudapp.azure.com:30010/repository/npm/
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx
WORKDIR /usr/share/nginx/html
COPY --from=0 /app/build .