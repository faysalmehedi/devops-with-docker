FROM golang:1.15 

WORKDIR /usr/src/app 
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN go build

CMD ./server