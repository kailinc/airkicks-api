TOKEN='BAhJIiUyYjIwNTc2Mjg4ZTQzOWE1MTI5MGJmNWI3OGZjMDcwNAY6BkVG--d414ad3aafa830fbd666263462e5e78a722f9b22'
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
      "brand": "'"${BRAND}"'"
      "caption": "'"${CAPTION}"'"
    }
  }'

echo
