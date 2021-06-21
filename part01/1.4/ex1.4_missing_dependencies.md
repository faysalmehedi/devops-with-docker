_Terminal 01:_

```console
~ $ docker run -it --name ex1.4 ubuntu sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'

Input website:
(terminal is waiting for the input, meanwhile to make things right I open another terminal window)
(going to terminal 02)

helsinki.fi
Searching..

<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>

~ $
~ $ docker ps -a
CONTAINER ID IMAGE COMMAND CREATED STATUS PORTS NAMES
297b73c70c44 ubuntu "sh -c 'apt update;a…" 7 minutes ago Exited (0) 5 minutes ago ex1.4
160b40af77e9 devopsdockeruh/simple-web-service:ubuntu "/usr/src/app/server" 34 minutes ago Up 34 minutes ex1.3
```

_Terminal 02:_

```console
~ $ docker exec -it ex1.4 bash
root@297b73c70c44:/# ~ $ apt update
root@297b73c70c44:/# ~ $ apt install curl

(after update ubuntu and installing curl, going back to terminal 01)
```
