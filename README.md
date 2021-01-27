# node-on-docker

Some helpers to run typescript code on docker

## Instructions

- Copy these files into your project root
  - `Dockerfile`
  - `buildDocker.sh`
  - `pushDocker.sh`
- Create a `.env` file in your project root
  - Set `DOCKER_USER_NAME` to your docker hub username
  - Set `DOCKER_REPO_NAME` to your docker project name
  - For example: https://hub.docker.com/repository/docker/USER/REPO
    - `USER` is the `DOCKER_USER_NAME`
    - `REPO` is the `DOCKER_REPO_NAME`
- Run `./buildDocker.sh` to build a local docker image
- Run `./pushDocker.sh` to push this to docker hub

## Deployment

See the example `docker-compose.yml` file in the `deployment/` directory.

Pro Tip: Create a `.env` file with `COMPOSE_PROJECT_NAME=XXX`.

- Create a directory on your docker host
- Copy and customise the `docker-compose.yml` file from `deployment/`
- Create a `.env` with the project name
- Copy the `updateAndRestartDocker.sh` script into this folder
- Run `./updateAndRestartDocker.sh`
