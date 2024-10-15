FROM node:20-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=changethis123

RUN mkdir -p /home/node-app

COPY /app /home/node-app

# set default dir in the container so that next commands executes in /home/app dir
WORKDIR /home/node-app

# # will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]
