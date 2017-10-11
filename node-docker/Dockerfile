FROM node:4.3.2

RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@3.7.5
  CMD ["node", "index.js"]

ENV HOME=/home/app

COPY package.json npm-shrinkwrap.json $HOME/chat/
RUN chown -R app:app $HOME/*

USER  root
WORKDIR $HOME/chat
RUN  npm cache clean


