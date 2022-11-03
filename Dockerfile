# Using the node:14-alpine(stripped-down version) as the base image
From node:14-alpine 
# Set the working directory as /user/app(impact the followings)
WORKDIR /usr/app
# copy the files under the repo to the root directory of container
COPY ./package.json .
# Run the command line in the prcoess of container
RUN npm install
# Copy everything under the working repo over(Minimize rebuilds)
COPY . .
# Specify the command to run on container startup
CMD ["npm", "start"]