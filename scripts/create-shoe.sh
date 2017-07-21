TOKEN='BAhJIiVmYzhkZGNkYTEzMDU4NmE2MDYxZjA2ZTY5NzIyODE5YwY6BkVG--dd8c66f7b85ba2448f8e1226fb70ac6466d4a761'
NAME='Mongo'
BRAND='Jordan'
CAPTION='wekt it'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "shoe": {
      "name": "'"${NAME}"'",
      "brand": "'"${BRAND}"'",
      "caption": "'"${CAPTION}"'"
    }
  }'

echo
