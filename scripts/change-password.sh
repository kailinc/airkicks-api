#!/bin/bash
ID='1'
TOKEN='BAhJIiVhMDZlZDc5ZjlkYjJkZjc3Y2RjOTZlY2RlYzU2NjllZAY6BkVG--868a062d7c5d7be21df0e6dcc715998aaff20458'
OLDPW='1'
NEWPW='0'

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
