FROM alpine:3.5

ADD configure.sh /configure.sh

RUN apk add --no-cache ca-certificates curl unzip wget\
 && apk add --update ca-certificates openssl\
 && update-ca-certificates\
 && chmod +x /configure.sh

CMD /configure.sh
