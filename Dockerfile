FROM node:14

# RUN apt-get update
# RUN apt install -y apache2

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .
CMD ["npm", "start"]
# CMD [ "node", "app.js" ]
# CMD apachectl -D FOREGROUND
