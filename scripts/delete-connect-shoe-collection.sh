#!/bin/bash
ID='6'
TOKEN='BAhJIiU1YzBlZmRiNTY4MTI1ODA0NTcwZTlhMjEyNmUwNjBlZQY6BkVG--dc039e2f6b6e8f57c90be2b2f28cbd71465deb96'
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/connects"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
