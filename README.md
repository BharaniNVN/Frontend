# Frontend
#### The Agenda of this project 
##### Build Docker File :
- Install Docker in your local ubuntu
- Develope the Docker file by installing the Java and Apache Tomcat (webserver) - Find the Dockerfile in the code section
- Makesure you create a Directory (myapp) for your webapp in the Dockerfile
- Expose your container with required port
- Build the Docker Image
- Copy your webapp files into the myapp directory, using docker cp command.
- we can navigate the docker file system using interactive session.
- Run the Docker
- Test whether you are able to access your web content (http://ipaddress:port/myapp)

###### examples of java & curl installation in ubuntu
 *RUN sudo apt install default-jdk
 *RUN sudo apt install default-jre
 *RUN java -version
 *RUN apt-get install curl

##### Push the Docker Image to Public and Private Registries :
- We can push the local Docker image to Docker hub public registry for resuable purpose
- We can push the local Docker image to ACR private registry for resuable purpose and consume image using AKS

##### List of docker command used for this project with description :
- mkdir docker_home (Docker Home Directory)
- cd docker_home
- touch dockerfile
- vim dockerfile (Build your Docker Image with the requirements)
- sudo docker build -t username/tomcat . (-t is tag we are using for image; username/tomcat is local repo)
- sudo docker container run -it -d --name frontendconatiner -p 8081:8080 username/tomcat_core (run the docker conatiner)
- sudo docker cp loacl to dockerid:path (copy to and forth files from docker to local)
- sudo az login (Azure Login)
- sudo acr login --name (ACR authentication)
- az acr show --name dockhubprivate.azurecr.io --query loginServer --output table (Displays the ACR name)
- sudo docker container commit e117e2c00260 tomcat_core:latest (commit tag to your docker)
- sudo docker container ls (List the running containers)
- sudo docker image tag tomcat_core:latest dockhubprivate.azurecr.io/username/tomcat_core:latest (tagging the container to push the image to ACR)
- sudo docker image push dockhubprivate.azurecr.io/username/tomcat_core:latest (Pushing the local repo to ACR)
- sudo docker ps (List the running conatiners with details)
- sudo docker ps -a (List all the containers)
- sudo start frontendconatiner <= containername (Start the created container)
- sudo docker stop frontendconatiner (stop the container)
