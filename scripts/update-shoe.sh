#!/bin/bash
ID='1'
TOKEN='BAhJIiVlMThmZTYRjNWM0OGRiMDc4Nzg0ZjZkMzc1OAY6BkVG--df8ff128ab18d10e4853427dde7d3a653476e4d4'
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
