```console
~/Code/devops-with-docker/part01/1.9 $ touch text.log
~/Code/devops-with-docker/part01/1.9 $ ls
text.log
~/Code/devops-with-docker/part01/1.9 $ docker run -d -v "$(pwd)/text.log://usr/src/app/text.log" devopsdockeruh/simple-web-service:alpine
1917d75dfd572773739b730965259153e11d0804e17eada8418ed8b9872c550d
~/Code/devops-with-docker/part01/1.9 $ tail -f ./text.log
2021-03-20 16:32:04 +0000 UTC
2021-03-20 16:32:06 +0000 UTC
2021-03-20 16:32:08 +0000 UTC
2021-03-20 16:32:10 +0000 UTC
2021-03-20 16:32:12 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2021-03-20 16:32:14 +0000 UTC
2021-03-20 16:32:16 +0000 UTC
2021-03-20 16:32:18 +0000 UTC
2021-03-20 16:32:20 +0000 UTC
2021-03-20 16:32:22 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2021-03-20 16:32:24 +0000 UTC
^C
~/Code/devops-with-docker/part01/1.9 $
~/Code/devops-with-docker/part01/1.9 $ docker ps
CONTAINER ID   IMAGE                                      COMMAND                 CREATED              STATUS              PORTS     NAMES
1917d75dfd57   devopsdockeruh/simple-web-service:alpine   "/usr/src/app/server"   About a minute ago   Up About a minute             unruffled_lalande
8f52d2883a1b   ubuntu:18.04                               "/bin/bash"             4 hours ago          Up 4 hours                    epic_ptolemy
~/Code/devops-with-docker/part01/1.9 $

```
