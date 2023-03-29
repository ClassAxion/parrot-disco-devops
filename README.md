## Quick start

1. Clone this repo using `git clone https://github.com/ClassAxion/parrot-disco-devops`

2. Install docker https://docs.docker.com/engine/install/ubuntu/

3. Configure what you need in `.env` file (mostly your Parrot Disco IP and ZeroTier network ID)

4. Start dashboard in background `docker compose up -d frontend-app`

5. Start zerotier in background (if you don't have zerotier running) `docker compose up -d zerotier-app`

6. Start backend in foreground `docker compose up backend-app`

7. Stop it using CTRL+C

Dashboard and ZeroTier can run freely in background.
Now you can reach the Dashboard on your IP on port 8000
