class AddPlayerToFantasyPlayers < ActiveRecord::Migration[5.1]
  def change
    add_reference :fantasy_players, :player, foreign_key: true
  end
end
