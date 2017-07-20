TOKEN='BAhJIiVjNzI1NGVmZmEzMzk5ZDg3OTczOWQ3OGFmY2RmODg3OQY6BkVG--be3a6c34859130ffb4260c3a3b68b3991e27833b'
NAME='sandelssss'
BRAND='Puma'
CAPTION='raccheeet'

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
