# Instructions

Help me debug a permissions problem I seem to have with certain node docker images by checking out this repositiory and running the code below. I'm particularly interested in what the ownership and permissions are for `node_modules` in your container, and if they differ between these two images:

## Node lts-alpine

1. `docker compose -f docker-compose-local.yml build --no-cache && docker compose -f docker-compose-local.yml up`
2. `docker exec -it docker-debug-test sh`
3. In the container `ls -la`
4. Report ownership and permissions of `node_modules`

## Node lts-slim

1. In `Dockerfile` Comment out `FROM node:lts-alpine` and uncomment `# FROM node:lts-slim`
2. As above, but use `bash` instead of `sh` on step 2
