## Video Tutorial

If you want Video Tutorial, its available here: [https://www.youtube.com/watch?v=zeYQufgCSvA](https://www.youtube.com/watch?v=zeYQufgCSvA)

## Quick start

1. Clone this repo using `git clone https://github.com/ClassAxion/parrot-disco-devops`

2. Install docker https://docs.docker.com/engine/install/ubuntu/

3. Copy `.env.example` to `.env`

4. Configure what you need in `.env` file (mostly your Parrot Disco IP and ZeroTier network ID)

5. Start dashboard in background `docker compose up -d frontend-app`

6. Start zerotier in background (if you don't have zerotier running) `docker compose up -d zerotier-app`

7. Start backend in foreground `docker compose up backend-app`

8. Stop it using CTRL+C

Dashboard and ZeroTier can run freely in background.
Now you can reach the Dashboard on your IP on port 8000
