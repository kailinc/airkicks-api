ID='1'
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
echo
