SHOEID='3'
COLLECTIONID='2'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/connect_shoe_collections"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "connect_shoe_collection": {
      "shoe_id": "'"${SHOEID}"'",
      "collection_id": "'"${COLLECTIONID}"'"
    }
  }'

echo
