FROM golang:1.18-alpine

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go get github.com/lib/pq && go get github.com/gorilla/mux && go build -o bin/gobankapi

EXPOSE 8080

CMD [ "bin/gobankapi" ]