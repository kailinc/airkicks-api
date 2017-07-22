TOKEN='BAhJIiU3ZjI5MDM1NDBjNDNiYmU5NmVjM2IyNGYwYTIwYzM5OQY6BkVG--45a69afccad79edc1dd31dcb1db0f2dfd6c48b6a'
DESCRIPTION='Best shoess on eurrph'
NAME='King Kicks'

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
