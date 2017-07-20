TOKEN='BAhJIiVkNjJmNTYzZThlZmY1MTI2N2MxNGNiYjYzZmI0YWJhMQY6BkVG--62b5acf05ba1aee23ffb5e2d72c80840e6519f13'
NAME='Adidas Only'
DESCRIPTION='I am more proud of this'

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
