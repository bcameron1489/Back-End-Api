curl http://localhost:4741/players \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "player":
      "name": "'"${PLAYER}"'",
      "team": "'"${TEAM}"'",
      "bye": "'"${BYE}"'"
    }
  }'


  # create_table "players", force: :cascade do |t|
  #   t.string "name"
  #   t.string "team"
  #   t.integer "bye"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.bigint "users_id"
  #   t.index ["users_id"], name: "index_players_on_users_id"
  # end
