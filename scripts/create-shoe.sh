TOKEN='BAhJIiU2MmY5YTNmMGRhYTFhNzdhMzE2YmMxYjE5ZTg2MDc3NgY6BkVG--5d52254242926eb25f7dc0371868eb7305f098f1'
NAME='Baller'
BRAND='Baller'
CAPTION='Baller'

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
