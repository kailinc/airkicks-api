#!/bin/bash
ID='12'
TOKEN='BAhJIiUyYjhkMGFmN2Ni2M2Y0Mzg2Njc2NTMwZTcxM2ZhZQY6BkVG--2feeb441146fe77e88eaa968cc7aef66bf496e7a'
DESCRIPTION='whaaa ker'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "collection": {
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
