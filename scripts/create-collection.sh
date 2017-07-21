TOKEN='BAhJIiU1YjZkNTZmZWM1YjY4YTk4MTI2ZGNlZjY2ZGJkNDUyMwY6BkVG--65bf48e3cd68c6d5f4cd0844af39c84afeb32590'
DESCRIPTION='BABBBY TOOL'
NAME='BABBY TOOL'

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
