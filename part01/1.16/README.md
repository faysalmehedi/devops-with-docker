## Exercise 1.16: Heroku

_Commands I used to publish the existing docker-image `devopsdockeruh/heroku-example` to heroku. First I created a free account on heroku and install heroku cli on my machine._

```console
$ docker pull devopsdockeruh/heroku-example
$ heroku login
$ heroku container:login
$ docker tag devopsdockeruh/heroku-example registry.heroku.com/dwd-herokuexample/web
$ docker push registry.heroku.com/dwd-herokuexample/web
$ heroku container:release -a dwd-herokuexample web
```

**Link to the heroku app: https://dwd-herokuexample.herokuapp.com/**
