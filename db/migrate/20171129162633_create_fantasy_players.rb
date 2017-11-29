class CreateFantasyPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :fantasy_players do |t|
      t.boolean :starting

      t.timestamps
    end
  end
end
