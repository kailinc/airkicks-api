TOKEN='BAhJIiVjZDM1MjUxYzkxNWU5MzIwYTNiODI4NDljYjZlOTEwZAY6BkVG--c8cdaa8408df82dcec1fac96a5f485413203aedb'
NAME='JORDAN 2'
BRAND='Jordan'
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
