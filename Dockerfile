FROM node:latest

# Create app directory
#WORKDIR /usr/src/app

# Install app dependencies
COPY ~/jenkins:/var/jenkins_home ./
COPY /var/run/docker.sock:/var/run/docker.sock ./
COPY /usr/local/bin/docker:/usr/local/bin/docker ./

#RUN npm install

# Bundle app source
#COPY . .

EXPOSE 9000:9000
CMD [ "node", "server.js" ]