TOKEN='BAhJIiVjZGE1YWUyYTJiMmM5ZWRhMTQ1N2U4MzQwZWY4ODNlYgY6BkVG--2dc3c42c9b9d22a980a5d5413b7027755d3d6372'
NAME='FOB Kicks'
DESCRIPTION='Rich boi 11'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "collection": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
