class FantasyPlayerSerializer < ActiveModel::Serializer
  attributes :id, :target, :player_id, :player

  def player
    object.player
  end
end
