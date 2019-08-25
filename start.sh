#!/bin/bash

function mail_input {
echo ehlo
echo "mail from: <${FROM}>"
echo "rcpt to: <${TO}>"
echo data
echo "from: <${FROM}>"
echo "to: <${TO}>"
echo "subject: ${SUBJECT}"
echo ''
echo "${BODY}"
echo "."
}

mail_input | telnet ${SERVER} ${PORT}
EXIT_CODE=$?
echo "Completed with exit code $EXIT_CODE"
