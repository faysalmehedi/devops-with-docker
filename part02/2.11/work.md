- I created a simple flask app.
- Created a Dockerfile to make a image of my app.
- Created a docker-compose file which is mantain my docker+app developement environment.
- Properly placed 'volumes', so that my changes will effect correctly in docker environment.

## _docker-compose.yml_

```
version: "3.5"

services:
  app:
    build: .
    image: flask-dev-env
    command: python src/app.py
    ports:
      - 5000:5000
    volumes:
      - .:/app
    container_name: flask-dev-env
```
