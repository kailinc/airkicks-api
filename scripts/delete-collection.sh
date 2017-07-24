#!/bin/bash
TOKEN='BAhJIiVmZDMxZmM5OGNkMWRjZGE5YTNiZDc0MTczMGI4MGVhZgY6BkVG--75053ac3cd8be8774cf47bcdf3fb5480391cdd9b'
ID=14
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
