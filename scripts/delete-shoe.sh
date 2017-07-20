#!/bin/bash
TOKEN='BAhJIiVjNzI1NGVmZmEzMzk5ZDg3OTczOWQ3OGFmY2RmODg3OQY6BkVG--be3a6c34859130ffb4260c3a3b68b3991e27833b'
ID=1
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
