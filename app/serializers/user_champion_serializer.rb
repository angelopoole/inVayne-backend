class UserChampionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :champion
end
