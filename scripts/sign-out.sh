#!/bin/bash
TOKEN='BAhJIiUyNTA1N2ZhMGVlY2ZiZTI3ODIwNGExNzM4MjY5ZmViMQY6BkVG--c675bef29ceb78853de28e4057f79328689bb666'
ID=1
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
