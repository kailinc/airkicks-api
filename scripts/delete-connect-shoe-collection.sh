#!/bin/bash
ID='8'
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/connect_shoe_collections"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \

echo
