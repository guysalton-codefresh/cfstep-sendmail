#!/bin/bash

function mail_input {
echo ehlo
sleep 5
echo "mail from: <${FROM}>"
sleep 5
echo "rcpt to: <${TO}>"
sleep 5
echo data
sleep 5
echo "from: <${FROM}>"
echo "to: <${TO}>"
echo "subject: ${SUBJECT}"
echo ''
echo "${BODY}"
sleep 5
echo "."
}

mail_input | telnet ${SERVER} ${PORT}
EXIT_CODE=$?
echo "Completed with exit code $EXIT_CODE"
