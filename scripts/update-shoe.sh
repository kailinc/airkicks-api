#!/bin/bash
ID='14'
TOKEN='BAhJIiVmZDMxZmM5OGNkMWRjZGE5YTNiZDc0MTczMGI4MGVhZgY6BkVG--75053ac3cd8be8774cf47bcdf3fb5480391cdd9b'
NAME='Jordan'
CAPTION='love it'

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
