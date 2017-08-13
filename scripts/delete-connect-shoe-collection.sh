#!/bin/bash
ID='3'
TOKEN='BAhJIiU5NDJlNmU1Tk0YjU0MjI4OTUxYTU2OGQ1MjliNTAxZgY6BkVG--5ecdd9e2d14522e46d8721c2adcc3469de7d6e63'
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/connects"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
