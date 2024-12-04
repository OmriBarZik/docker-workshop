# Docker Workshop!

This is a workshop to learn about Docker. you have a service that need to run on a docker container.

1. Go the file `Dockerfile` and complete the instructions.

2. build your image with the `tag`: `<your username>/workshop:latest`

3. run your container with the `tag`: `<your username>/workshop:latest` and expose the port `3000`

4. Go to your browser and open the url `http://localhost:3000` and follow the site instructions.

5. When you finish, stop and remove your container.

## Having troubles?

If you are getting stuck on one you can checkout to the `solution` branch abd you will get the solution to all of the challenges

### Port is already allocated error

this means you have another docker process that have connected to the port 3000, you can fix this by removing all the docker containers on you machine, like so:

```bash
docker rm -f $(docker ps -aq)
```

