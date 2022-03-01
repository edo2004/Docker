# Herramientas disponibles en yml
* Jenkins
* Portaines
* Nexus
* Sonarqube

Se recomienda usar la herramienta en linea  https://labs.play-with-docker.com/   para instalar aplicaciones es necesario https://platformengineer.com/install-vi-bash-curl-on-alpine-linux/

Para kubernetes Ansible docker se puede utilizar esta plataforma https://www.katacoda.com/courses/kubernetes/launch-single-node-cluster

Se realiza el despliegue a través del comando 
 ``` docker-compose -f docker-compose.yml up -d ``` 
 
 ## Desplegar Jenkins y restaurar
 Se ejecuta los siguientes comandos(en el archivo comandosMontarAmbiente.sh estan las lineas correspndientes para levantar y restaurar backup de jenkins)
 ```
 git clone https://github.com/edixred/Docker.git
 sh Docker/comandosMontarAmbiente.sh
 ```
