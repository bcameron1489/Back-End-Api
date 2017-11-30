curl http://localhost:4741/fantasy_players \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "fantasy_player": {
      "player_id": "'"${PLAYERID}"'",
      "user_id": "'"${USERID}"'",
      "target": "'"${TARGET}"'"
    }
  }'

# USERID=6 PLAYERID=3 TOKEN=BAhJIiU1YTg2OGViNzdmNjY2MWFjMzkzOGMwNzRiYTA5NmY1NwY6BkVG--8ec7acfa236abd112d67883d0e5642dd0d3d8309 sh
