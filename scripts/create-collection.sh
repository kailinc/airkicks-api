TOKEN='BAhJIiUyYjhkMGFmN2NiMjA2M2Y0Mzg2Njc2NTMwZTcxM2ZhZQY6BkVG--2feeb441146fe77e88eaa968cc7aef66bf496e7a'
DESCRIPTION='tests'
NAME='tests'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "collection": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
