# Build The image
docker build -t omribarzik/test-image .

# Start the server
docker run -p 3000:3000 omribarzik/test-image

# Add environment variable
docker run -p 3000:3000 -e MY_DOCKER_ENV=cool omribarzik/test-image

# Get secret from docker image
docker run omribarzik/test-image cat /data/password.txt