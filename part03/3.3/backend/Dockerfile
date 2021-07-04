FROM golang:1.15

WORKDIR /usr/src/app

EXPOSE 8080

COPY . .

RUN go build
ENV REQUEST_ORIGIN=http://localhost

RUN useradd -m appuser
RUN chown appuser .
USER appuser

CMD ./server