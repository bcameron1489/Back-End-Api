class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :team, :bye
end
