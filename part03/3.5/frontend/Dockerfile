FROM alpine

WORKDIR /usr/src/app

EXPOSE 5000

COPY . . 

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN apk update && apk add --no-cache curl npm bash nodejs && \
    curl -sL https://deb.nodesource.com/setup_14.x && \
    npm install && \
    npm install -g serve && \
    npm run build && \
    apk del curl && \
    rm -rf /var/lib/apt/lists/* && \
    adduser -D appuser && \
    chown appuser .

USER appuser

CMD [ "serve", "-s", "-l", "5000", "build" ]