curl http://localhost:4741/players \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "player": {
      "name": "'"${NAME}"'",
      "team": "'"${TEAM}"'",
      "bye": "'"${BYE}"'"
    }
  }'

# NAME='Tom Brady' TEAM=NY BYE=9 TOKEN="BAhJIiU1YTg2OGViNzdmNjY2MWFjMzkzOGMwNzRiYTA5NmY1NwY6BkVG--8ec7acfa236abd112d67883d0e5642dd0d3d8309" sh
