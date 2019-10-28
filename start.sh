#!/bin/bash

if [[ -n "${DEBUG}" ]]; then
  set -x
fi

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

echo "Sending mail ... 
------ Start of mail body ------------"
mail_input

echo "------ End of mail body ---------"

mail_input | telnet "${SERVER}" ${PORT}
EXIT_CODE=$?
echo "Completed with exit code $EXIT_CODE"
