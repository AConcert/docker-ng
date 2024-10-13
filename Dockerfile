FROM node:22-alpine3.19 as builder
WORKDIR '/usr/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.27.2
COPY --from=builder /usr/app/dist/my-ng-app/browser /usr/share/nginx/html
