TOKEN='BAhJIiU1MjM4ZjM2YWMzOWIxNTRhZTU3NjgwZjdhMGUxMjg2NQY6BkVG--377069f0d82c2c843cea8fc7711ffffd2ae0e1df'
DESCRIPTION='I love This'
NAME='Jordan King'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "collection": {
      "name": "'"${NAME}"'"
    }
  }'

echo
