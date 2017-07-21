#!/bin/bash
TOKEN='BAhJIiVjZDdmNzMyNjZmYmY5YzY2OWQ2NzM0MjM4YmIyZjAzZgY6BkVG--47c81a4edbc8350707d80ec13626598e48be4b0b'
ID=7
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
