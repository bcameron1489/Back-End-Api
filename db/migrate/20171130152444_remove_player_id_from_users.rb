class RemovePlayerIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_index :users, :player_id
    remove_column :users, :player_id, :string
  end
end
