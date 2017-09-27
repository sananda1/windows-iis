# windows-iis
The Dockerfile will create a docker image which has windows IIS installed on it and an webpage deployed to it.

# Image creation
docker build -t iis-app .

#Run the docker image
docker run -d -p 8080:8000 iis-app

#Bash into the running container
docker exec -it iis-app bin/bash
