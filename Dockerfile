# Building this new images on top of the base image that stored in our artifactory
FROM obarzik/docker-workshop:node

# Copy the service code into the /app directory of the container
# REPLACE ME

# create a new file named "name.txt" with your name under the directory /data
# REPLACE ME

# set you working directory to the source code location
# REPLACE ME

# Installing dependencies
RUN npm ci

# Running the project
CMD ["node", "/app/src/index.js"]
