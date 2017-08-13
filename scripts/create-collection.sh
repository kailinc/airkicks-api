TOKEN='BAhJIiVjZDM1MjUxYzkxNWU5MzIwYTNiODI4NDljYjZlOTEwZAY6BkVG--c8cdaa8408df82dcec1fac96a5f485413203aedb'
DESCRIPTION='Kai'
NAME='Jordans Only'

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
