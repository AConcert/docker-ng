FROM hub.atomgit.com/library/node:20-buster-slim as builder
WORKDIR 'usr/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM hub.atomgit.com/library/nginx:1.25.2
COPY --from=builder /usr/app/dist/my-ng-app/browser /usr/share/nginx/html
