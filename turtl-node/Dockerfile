# run Turtl and NodeJS
FROM node:11
RUN apt-get update \
  && apt-get -y install bash git gnupg2
EXPOSE 8181
#install Turtl from local git repo (following mostly copied from Turtl maintiner Dockerfile)
#Exeptions: changed working directory, copy modified config file instead of from default
#Make sure plugin path is correctly set in turtl's config.yaml
#Also assumes turtl has been manually fetched from github
WORKDIR /opt/turtl
COPY ./server/package.json .
RUN npm install --production
COPY ./server/scripts scripts
ARG TURTL_SERVER_PLUGIN_REPO
ARG TURTL_SERVER_PLUGIN_LOCATION
RUN scripts/install-plugins.sh
COPY ./server/ .
COPY ./config.yaml config/config.yaml
RUN mkdir plugins
CMD scripts/init-db.sh \
        && node server.js


