class Champion < ApplicationRecord
    # serialize :metadata, Hash
    has_many :userchampions
    has_many :users, through: :userchampions
end
