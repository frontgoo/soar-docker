FROM golang:1.16-alpine as builder
ENV GOROOT="/usr/local/go"
ENV GOPATH="/root/go"
ENV PATH="${PATH}:${GOROOT}/bin"
ENV PATH="${PATH}:${GOPATH}/bin"

RUN apk update && apk --no-cache add gcc git make
RUN mkdir  -p ${GOPATH}/src/github.com/XiaoMi/ && git clone -b dev https://github.com/XiaoMi/soar.git ${GOPATH}/src/github.com/XiaoMi/soar
RUN cd ${GOPATH}/src/github.com/XiaoMi/soar &&  CGO_ENABLED=0 make &&mv bin/soar /root/

RUN chmod -R 755 /root/soar