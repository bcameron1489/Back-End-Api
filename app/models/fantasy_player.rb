class FantasyPlayer < ApplicationRecord
  belongs_to :user
  belongs_to :player
  validates :player_id, :uniqueness => { :scope => :user_id }
end
