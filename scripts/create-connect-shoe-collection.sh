SHOEID='10'
COLLECTIONID='1'
USERID='8'
TOKEN='BAhJIiU1YzBlZmRiNTY4MTI1ODA0NTcwZTlhMjEyNmUwNjBlZQY6BkVG--dc039e2f6b6e8f57c90be2b2f28cbd71465deb96'

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
