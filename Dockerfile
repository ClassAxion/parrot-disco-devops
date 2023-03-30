FROM node:12 as FRONTEND-BUILDER

RUN apt-get update && apt-get install -y git

WORKDIR /app

RUN git clone https://github.com/ClassAxion/parrot-disco-dashboard-frontend /app

RUN npm i

RUN npm run build

FROM node:16 as BACKEND

RUN apt-get update && apt-get install -y git ffmpeg

WORKDIR /app

RUN git clone https://github.com/ClassAxion/disco-4g-without-sc2 /app

RUN npm i

RUN npm run build

CMD ["npm","run","start"]

FROM nginx:1.15-alpine as FRONTEND

COPY --from=FRONTEND-BUILDER /app/dist /usr/share/nginx/html

COPY ./nginx/nginx-default.conf.template /etc/nginx/conf.d/default.conf.template

COPY ./nginx/docker-entrypoint.sh /

EXPOSE 80

RUN ["chmod", "+x", "/docker-entrypoint.sh"]

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]