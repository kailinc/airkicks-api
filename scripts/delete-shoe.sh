#!/bin/bash
TOKEN='BAhJIiU3M2VhMGFhMmIwYWQxNjVjZmZmOWNhZTAwYWUxMGI0YQY6BkVG--43a97f6f6a14311a3dbf0636ea7095a99b43a915'
ID=7
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
