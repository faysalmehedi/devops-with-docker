FROM ubuntu:18.04 

WORKDIR /usr/src/app

EXPOSE 5000

COPY . . 

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt install -y nodejs && \
    npm install && \
    npm install -g serve && \
    npm run build && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m appuser && \
    chown appuser .


USER appuser

CMD [ "serve", "-s", "-l", "5000", "build" ]


