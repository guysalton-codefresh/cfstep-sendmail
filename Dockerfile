FROM alpine:3.10

RUN apk busybox-extras bash

COPY ./start.sh /run/start.sh
RUN chmod +x /run/start.sh

CMD ["/run/start.sh"]
