```console
~/Code/devops-with-docker/part01/1.8 $ docker build . -t curler
~/Code/devops-with-docker/part01/1.8 $ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED              SIZE
curler                              latest    9aa718c6fc90   About a minute ago   116MB
ubuntu                              18.04     329ed837d508   2 weeks ago         63.3MB
~/Code/devops-with-docker/part01/1.8 $ docker run -it curler 
Input website:
helsinki.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>
~/Code/devops-with-docker/part01/1.8 $ 
```
