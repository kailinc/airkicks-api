TOKEN='BAhJIiUyYjIwNTc2Mjg4ZTQzOWE1MTI5MGJmNWI3OGZjMDcwNAY6BkVG--d414ad3aafa830fbd666263462e5e78a722f9b22'
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
