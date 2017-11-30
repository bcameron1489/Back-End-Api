class CreateFantasyPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :fantasy_players do |t|
      t.string :target

      t.timestamps
    end
  end
end
