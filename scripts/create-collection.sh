TOKEN='BAhJIiU1YTAzNzViZjI3ZmI5NjBhZTkyMjAzY2RkY2Q1NDE4MAY6BkVG--864883082b697159a88805db2ad9a3556b21e0d9'
DESCRIPTION='I love This'
NAME='What Watermelon  d d'

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
