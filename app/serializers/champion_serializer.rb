class ChampionSerializer < ActiveModel::Serializer
  attributes :id, :name, :key, :title, :blurb, :info, :image, :tags, :partype, :stats
end
