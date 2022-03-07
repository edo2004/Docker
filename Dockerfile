FROM jenkins/jenkins:latest

# Create app directory
#WORKDIR /usr/src/app
 CMD ["bash"]
# Install app dependencies
COPY /root/jenkins /var/jenkins_home

#RUN npm install

# Bundle app source
#COPY . .

EXPOSE 9000:9000
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
#CMD [ "node", "server.js" ]