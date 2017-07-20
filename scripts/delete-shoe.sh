#!/bin/bash
TOKEN='BAhJIiUyY2QwYmU3N2Fh23MWEzN2UwOQY6BkVG--d613807c9a5af345eb77cac1073c0ef498825f86'
ID=1
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
