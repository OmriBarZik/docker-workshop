# Building this new images on top of the base image that stored in our artifactory
FROM omribarzik/docker-workshop:node

# Copy the service code into the /app directory of the container
COPY . /app

# create a new file named "name.txt" with your name under the directory /data
# RUN echo "Your Name" > /data/name.txt
RUN echo "docker is awesome!" > /data/name.txt

# set you working directory to the source code location
WORKDIR /app

# Installing dependencies
RUN npm ci

# Running the project
CMD ["node", "/app/src/index.js"]

# docker build -t omribarzik/test-image .