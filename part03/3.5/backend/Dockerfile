FROM golang:1.15 AS build-env

WORKDIR /usr/src/app

COPY . .
ENV CGO_ENABLED=0

RUN go build

FROM alpine 

WORKDIR /usr/src/app

EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost

COPY --from=build-env /usr/src/app /usr/src/app

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/* && \
    adduser -D appuser && \
    chown appuser .

USER appuser

CMD ./server 
