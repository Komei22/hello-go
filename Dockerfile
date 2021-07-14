FROM golang:1.16.3-alpine

WORKDIR /go/src

COPY ./main.go /go/src/main.go

RUN go mod init server && go build

CMD ["go", "run", "main.go"]
