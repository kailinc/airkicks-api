SHOEID='11'
COLLECTIONID='1'
USERID='8'
TOKEN='BAhJIiU5NDJlNmU1OTk0YjU0MjI4OTUxYTU2OGQ1MjliNTAxZgY6BkVG--5ecdd9e2d14522e46d8721c2adcc3469de7d6e63'

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
