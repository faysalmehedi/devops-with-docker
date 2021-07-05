
FROM golang:1.15 AS build-env

WORKDIR /app

COPY . .

RUN go build

FROM alpine 

WORKDIR /app
EXPOSE 8080

RUN apk update && apk add ca-certificates && \
    rm -rf /var/cache/apk/*
    
COPY --from=build-env /app /app

RUN adduser -D appuser && \
    chown appuser .

USER appuser

CMD ./server
