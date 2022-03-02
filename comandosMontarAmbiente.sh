#SCRIPT PARA DESPLEGAR AMBIENTE SONARQUBE MEDIANTE EL USO DE IMAGENES DOCKER
docker-compose -f Docker/Jenkins.yml up -d
# obtener contraseña
echo ______________Jenkins Listo______________
echo ______________ restaurando BACKUP Jobs ______________
cp Docker/AllBackup jenkins/
echo ______________ Descargando BACKUP Plugins ______________
chmod 400 Docker/demokey
scp -i Docker/demokey ubuntu@ec2-34-205-146-122.compute-1.amazonaws.com:/home/ubuntu/bkjenkins.tar .
echo ______________ Restaurando BACKUP Plugins ______________
tar -xvf bkjenkins.tar
rm -rf bkjenkins.tar
docker restart jenkins
sleep 20
echo ______________ Reinicio Terminado ______________
echo ______________ Iniciando SonarQube p:9100 ______________
#docker-compose -f Docker/SonarQube.yml up -d
sleep 20
echo ______________ SonarQube Iniciado______________

#Exportar Jenkins
docker commit -a "Eduar" -m "Primera imagen" jenkins demo-jenkins
docker save -o backup_jenkins.tar demo-jenkins

echo ______________ Imagen de jenkins exportada______________

#Subir al servidor de Aws
scp -i Docker/demokey backup_jenkins.tar ubuntu@ec2-34-205-146-122.compute-1.amazonaws.com:/home/ubuntu/backupJenkins.tar
