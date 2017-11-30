curl http://localhost:4741/fantasy_players \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "fantasy_player": {
      "player_id": "'"${PLAYERID}"'",
      "target": "'"${TARGET}"'"
    }
  }'

# PLAYERID=3 TARGET=yes TOKEN=BAhJIiU1MTAwYTcyNDg0NDFjNGQ2YjNmYmFjZDViYTFhMjQ3NwY6BkVG--8f7eaf9b9151cfff5e017c8c982eebef848c7258 sh
