TOKEN='BAhJIiVkYmEzZWIyOTMzZjdjMDQ4NzIwOWFkMzQ4Zjg4YzUwZAY6BkVG--9832921b55524b67380c1a3cc1cc65a35d37cb1f'
NAME='NMD R2'
BRAND='Adidas'
CAPTION='My shoe'

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
