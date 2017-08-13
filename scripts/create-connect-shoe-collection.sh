SHOEID='11'
COLLECTIONID='1'
USERID='8'
TOKEN='BAhJIiVjZDM1MjUxYzkxNWU5MzIwYTNiODINDljYjZlOTEwZAY6BkVG--c8cdaa8408df82dcec1fac96a5f485413203aedb'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/connects"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "connect": {
      "user_id": "'"${USERID}"'",
      "shoe_id": "'"${SHOEID}"'",
      "collection_id": "'"${COLLECTIONID}"'"
    }
  }'

echo
