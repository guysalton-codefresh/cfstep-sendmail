FROM arunvelsriram/utils

#RUN apk add --update --no-cache netcat-openbsd bash

COPY ./start.sh /run/start.sh
RUN chmod +x /run/start.sh

CMD ["/run/start.sh"]