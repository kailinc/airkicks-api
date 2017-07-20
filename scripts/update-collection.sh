#!/bin/bash
ID='1'
TOKEN='BAhJIiUzMmM2ZTBlOTNTlhYjdjZWU2ZjgwZTg2MGFhMgY6BkVG--61ed255e0382457762c1cbdb68697bd63adfcdf0'
DESCRIPTION='hacker hacker'

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
