TOKEN='BAhJIiUxZjJhOTk1MjYxOTRmODJkNzgxOGVmNjkyYWZkODQ3OAY6BkVG--776ad2fce7304a22c1105f60d0be5ffca9aa9205'
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
      "caption": "'"${CAPTION}"'"
    }
  }'

echo
