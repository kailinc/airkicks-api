TOKEN='BAhJIiUyODI5OWEyZDcxNmIxMDA1OTQzNjQ2NTA5Zjg2MGU3ZQY6BkVG--1bfb1e8cdfb2417e8f8704cd3ad86621d45915a2'
DESCRIPTION='Kicking it'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "collection": {
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
