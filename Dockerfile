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

EXPOSE 3000

CMD ["npm","run","start"]

FROM nginx as FRONTEND

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=FRONTEND-BUILDER /app/dist /usr/share/nginx/html

EXPOSE 80