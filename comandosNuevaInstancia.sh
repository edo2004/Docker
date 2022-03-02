echo ______________ Descargando BACKUP Plugins ______________
chmod 400 Docker/demokey
scp -i Docker/demokey ubuntu@ec2-34-205-146-122.compute-1.amazonaws.com:/home/ubuntu/backupJenkins.tar .
docker load -i backupJenkins.tar
docker run -ti --name demoJenkins demo-jenkins
