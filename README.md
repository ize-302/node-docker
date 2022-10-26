### Building the image

docker build -t <your username>/node-web-app:1.0 .

### List images

$ docker images

### run the image

docker run -p 8000:8080 -d <your username>/node-web-app:1.0

if all goes well, app should run on localhost:8000
Docker mapped the 8080 port inside of the container to the port 8000 on your machine.

## OR Instead of building the image and running it, separately, you could simply use docker-compose command

$ docker-compose up

$ docker-compose down
