```console

~/Code/devops-with-docker/part01/1.7 $ docker build . -t web-server
Sending build context to Docker daemon  2.048kB
Step 1/2 : FROM devopsdockeruh/simple-web-service:alpine
 ---> fd312adc88e0
Step 2/2 : CMD server
 ---> Running in 2ee3b982adfd
Removing intermediate container 2ee3b982adfd
 ---> f34ee0431e36
Successfully built f34ee0431e36
Successfully tagged web-server:latest
~/Code/devops-with-docker/part01/1.7 $ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED          SIZE
web-server                          latest    f34ee0431e36   16 seconds ago   15.7MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   4 days ago       15.7MB

~/Code/devops-with-docker/part01/1.7 $ docker run web-server
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:	export GIN_MODE=release
 - using code:	gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080

```
