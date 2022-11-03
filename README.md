# dockerized-express
Dockerize express with the base image of node:14-alpine

### Create the docker image
`docker build -t <image name> .`
### Run the container out of the image
`docker run -p 3000(Route the incoming request to this port to:):3000(-> port inside the container) <image name>`

ex:
` docker run -p 3000:3000 dockerized-express`
### Navigate through the directories in the container
Execute the sh shell to override the default command on container startup and have it tied up to our terminal.

`docker run -it <image name> sh`
