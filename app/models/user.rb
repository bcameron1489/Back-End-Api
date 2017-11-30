# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :fantasy_players
  has_many :players, through: :fantasy_players
end
