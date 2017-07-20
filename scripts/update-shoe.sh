#!/bin/bash
ID='1'
TOKEN='BAhJIiVjNzI1NGVmZmEzMzk5ZDg3OTczOWQ3OGFmY2RmODg3OQY6BkVG--be3a6c34859130ffb4260c3a3b68b3991e27833b'
CAPTION='hello'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "shoe": {
      "caption": "'"${CAPTION}"'"
    }
  }'

echo
