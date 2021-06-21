## Exercise 1.15: Homework

**Docker Hub Link:** https://hub.docker.com/r/faysalmehedi/web-server-test

_Please follow the following instructions to run the docker images on the local machine:_

- Make sure docker installed in the local machine.
- Pull the docker image from the docker hub repo

```console
$ docker pull faysalmehedi/web-server-test:latest
```

- Run the image on the local machine as container

```console
$ docker run -p 8080:8080 faysalmehedi/web-server-test:latest
```

- Access the application from http://localhost:8080
