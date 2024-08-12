FROM golang:1.22.5-alpine AS hotrod_builder
WORKDIR /tmp/hotrod
COPY ./ /tmp/hotrod
ENV CGO_ENABLED=0
ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn,direct
RUN cd /tmp/hotrod && go build -o /bin/hotrod ./main.go
