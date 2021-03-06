FROM golang

MAINTAINER Tobias Hartwich <tobias.hartwich@gmail.com>

ADD . /go/src/git.tha.io/toha/go-xmpp-upload

RUN mkdir -p /opt/xmpp_uploads
RUN go get github.com/lib/pq
RUN go install git.tha.io/toha/go-xmpp-upload

ENTRYPOINT /go/bin/go-xmpp-upload

VOLUME ["/opt/xmpp_uploads"]

EXPOSE 8080
