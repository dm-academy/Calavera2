FROM node:4.3.2

RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@3.7.5
  CMD ["node", "index.js"]

ENV HOME=/home/app

COPY package.json app.js $HOME/www/
RUN chown -R app:app $HOME/*

USER  app
WORKDIR $HOME/www
RUN npm install && npm cache clean
RUN node app.js

