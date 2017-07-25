#!/bin/bash
ID='31'
TOKEN='BAhJIiUwOTNiZTZkODkyMWI0ZjFiMjUxMmFiNDg1ZWI1YjNmNwY6BkVG--85a809824ca4e12926f918f2c9c374edf7160b86'
DESCRIPTION='This is awesome'

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
