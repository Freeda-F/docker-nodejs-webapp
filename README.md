# Node.JS web application
Create a simple nodeJs application and deploy it onto a docker container.

## Requirements

- [Install docker](https://docs.docker.com/engine/install/)
- [Install docker-compose](https://docs.docker.com/compose/install/)

## Prerequisites

1. A nodeJs web application using an Express framework in file server.js
2. File containing the app dependency packages - package.json

## Building the docker Image

For deploying the NodeJs application, we will be building a custom image using a Dockerfile. 

1. Run the Dockerfile
```
docker build -t freedafrancis/nodejs-app:1 .
```
3. You can give the required tags to the docker image
```
docker tag freedafrancis/nodejs-app:1 freedafrancis/nodejs-app:latest
```
4. Push the image to the repository
```
docker image push freedafrancis/nodejs-app:latest
docker image push freedafrancis/nodejs-app:1
```
Now, the image is available in the docker repository.

## Download precreated image

You can also just download the existing image from DockerHub.
```
docker image pull freedafrancis/nodejs-app:latest
```

## Run the container

Either you can run the container using the docker command 
```
docker container run --name nodejs-app -d -p 80:3000 freedafrancis/nodejs-app:latest
```
Or create a docker-compose file(docker-compose.yml) and use compose commands to start the container.
```
docker-compose up -d
 ```
 
## Provisioning
1. Clone this repository
```
git clone https://github.com/Freeda-F/docker-nodejs-webapp.git
```
2. Switch to the cloned directory
```
cd docker-nodejs-webapp
```
3. Start the docker containers using
```
docker-compose up -d
```
4. To stop and remove the containers,networks or volumes associated with this docker, you can use
```
docker-compose down -v
```

## Result

![image](https://user-images.githubusercontent.com/93197553/146653060-26ecced6-f474-4d90-89b3-e4ec2f5f3327.png)

![image](https://user-images.githubusercontent.com/93197553/146653076-6259e311-03d3-4a0c-8488-464dd564dbee.png)


