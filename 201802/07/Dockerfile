FROM node:carbon
# Create app directory
WORKDIR ~/Calavera2/201802/07
# Install app dependencies
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD ["npm","start"]
