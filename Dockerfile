FROM golang:1.16.3

WORKDIR /app

RUN git clone --depth=1 https://github.com/Komei22/hello-go.git
RUN go install github.com/Komei22/hello-go@latest

ENTRYPOINT [ "hello-go" ]
