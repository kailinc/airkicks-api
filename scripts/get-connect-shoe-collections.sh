#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/connect_shoe_collections"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \

echo
