#!/bin/bash
TOKEN='BAhJIiUzMjI3ZGM0NjRmMWM2NGJkNGJiZGFmMWM1MTQzMzVkZQY6BkVG--8400c3fb73535e37c80440afcf993d40aacc408d'
ID=3
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
