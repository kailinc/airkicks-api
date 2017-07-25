#!/bin/bash
ID=19
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user-shoes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \

echo
