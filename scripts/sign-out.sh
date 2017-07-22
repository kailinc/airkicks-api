#!/bin/bash
TOKEN='BAhJIiVjZWJmNTY0ZTMxZjM0Zjc3Y2UwNDkxYmQyZmQ0YWI5YQY6BkVG--acce1f9926fa9fff28346eec3be52fc10fdd6eda'
ID=5
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
