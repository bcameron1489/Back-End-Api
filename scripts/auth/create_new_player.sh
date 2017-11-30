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

# PLAYER='Bobson Duggnut' TEAM=NYE BYE=1 TOKEN="BAhJIiVmZGY3NTQ3YmY5Nzc2NWEzMmE0NjYzY2IwM2QwZTk2NgY6BkVG--0c823a8830c765c955110671175c7a70c51f4375" sh

  # create_table "players", force: :cascade do |t|
  #   t.string "name"
  #   t.string "team"
  #   t.integer "bye"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.bigint "users_id"
  #   t.index ["users_id"], name: "index_players_on_users_id"
  # end
