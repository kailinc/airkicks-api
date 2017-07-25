ID='32'
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
echo
