class Player < ApplicationRecord
  has_many :fantasy_players
  has_many :users, through: :fantasy_players
end
