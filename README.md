## Quick start

1. Clone this repo using `git clone https://github.com/ClassAxion/parrot-disco-devops`

2. Install docker https://docs.docker.com/engine/install/ubuntu/

3. Configure what you need in `.env` file (mostly your Parrot Disco IP)

4. Run `docker compose up -d` to start all apps

5. Check server logs `docker compose logs -f backend-app`

6. Stop the application `docker compose down`

## Running in foreground

If you want, you can start frontend app in background but start backend app only when you need it.

1. Start frontend by `docker compose up -d frontend-app`
2. Start backend when you need it by `docker compose up backend-app`

Now you can see backend logs and you can kill it by pressing CTRL+C
