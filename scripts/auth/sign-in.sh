#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
# EMAIL=ava@bob.com PASSWORD=hannah  PASSWORD_CONFIRMATION=hannah scripts/auth/sign-in.sh
# {"user":{"id":6,"email":"fdfd","token":"BAhJIiU1YTg2OGViNzdmNjY2MWFjMzkzOGMwNzRiYTA5NmY1NwY6BkVG--8ec7acfa236abd112d67883d0e5642dd0d3d8309"}}
