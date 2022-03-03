apk add ansible
chmod 400 Docker/demokey
scp -i Docker/demokey Docker/Jenkins.yml ubuntu@ec2-34-205-146-122.compute-1.amazonaws.com:/home/ubuntu/Baenkins.tar
