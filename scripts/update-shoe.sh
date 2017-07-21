#!/bin/bash
ID='8'
TOKEN='BAhJIiU3M2VhMGFhMmIwYWQxNjVjZmZmOWNhZTAwYWUxMGI0YQY6BkVG--43a97f6f6a14311a3dbf0636ea7095a99b43a915'
NAME='Jordan'
CAPTION='it works'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "shoe": {
      "name": "'"${NAME}"'",
      "caption": "'"${CAPTION}"'"
    }
  }'

echo
