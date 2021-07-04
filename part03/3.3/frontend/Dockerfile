FROM ubuntu:18.04 

WORKDIR /usr/src/app

EXPOSE 5000


RUN apt-get update
RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs

COPY . . 

RUN npm install 
RUN npm install -g serve 

ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm run build 

RUN useradd -m appuser
RUN chown appuser .

USER appuser

CMD [ "serve", "-s", "-l", "5000", "build" ]

