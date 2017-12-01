class RemoveUsersIdFromPlayer < ActiveRecord::Migration[5.1]
  def change
    remove_index :players, :users_id
    remove_column :players, :users_id, :string
  end
end
