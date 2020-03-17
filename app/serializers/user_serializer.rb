class UserSerializer < ActiveModel::Serializer
    attributes :id, :username
    has_many :userchampions
    
    # put where it belongs to
    # has_many :snacks
  end