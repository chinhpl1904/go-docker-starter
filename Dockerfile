FROM golang:alpine
ENV GOPATH /go
ENV GO111MODULE on

RUN apk update && apk --no-cache add git

RUN mkdir /app
WORKDIR /app

ADD . /app

RUN  go install github.com/cosmtrek/air@v1.27.3

CMD ["air", "-c", ".air.toml"]

