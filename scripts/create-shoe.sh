TOKEN='BAhJIiUwOTNiZTZkODkyMWI0ZjFiMjUxMmFiNDg1ZWI1YjNmNwY6BkVG--85a809824ca4e12926f918f2c9c374edf7160b86'
NAME='Jordan 30'
BRAND='Jordan'
CAPTION='my favorite shoe'

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
