```console
~ $ docker pull devopsdockeruh/simple-web-service:alpine
alpine: Pulling from devopsdockeruh/simple-web-service
ba3557a56b15: Pull complete
1dace236434b: Pull complete
4f4fb700ef54: Pull complete
Digest: sha256:dd4d367476f86b7d7579d3379fe446ae5dfce25480903fb0966fc2e5257e0543
Status: Downloaded newer image for devopsdockeruh/simple-web-service:alpine
docker.io/devopsdockeruh/simple-web-service:alpine
~ $ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   4 days ago    83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   4 days ago    15.7MB
~ $ docker run -d --name alpine devopsdockeruh/simple-web-service:alpine
d11f3e3e0a79665a086f6a956b46bc5fa0bbeb04ddc6596403a5dcda0b20eb60
~ $ docker ps
CONTAINER ID   IMAGE                                      COMMAND                 CREATED         STATUS         PORTS     NAMES
d11f3e3e0a79   devopsdockeruh/simple-web-service:alpine   "/usr/src/app/server"   7 seconds ago   Up 3 seconds             alpine
~ $ docker exec -it alpine sh
/usr/src/app # ls
server    text.log
/usr/src/app # tail -f ./text.log
2021-03-19 11:41:51 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2021-03-19 11:41:53 +0000 UTC
2021-03-19 11:41:55 +0000 UTC
2021-03-19 11:41:57 +0000 UTC
2021-03-19 11:41:59 +0000 UTC
2021-03-19 11:42:01 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2021-03-19 11:42:03 +0000 UTC
2021-03-19 11:42:05 +0000 UTC
2021-03-19 11:42:07 +0000 UTC
^C
/usr/src/app #
```
