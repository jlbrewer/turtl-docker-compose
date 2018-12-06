Personal setup for running turtl/server using docker-compose.

**Published for demo purposes. I will not provide support for this should you decide to use it.**

The dockerfiles contained here inherit from postgres:11 and node:11 official containers. The postgres folder contains scripts to initialize the turtl database and user (executed at build time) and to call pg_dump to pull backups into a local volume (which should be automated from the host with cron and ``docker exec``). 
