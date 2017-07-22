#!/bin/bash
ID='5'
TOKEN='BAhJIiU3ZjI5MDM1NDBjNDNiYmU5NmVjM2IyNGYwYTIwYzM5OQY6BkVG--45a69afccad79edc1dd31dcb1db0f2dfd6c48b6a'
OLDPW='d'
NEWPW='c'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
