class User < ApplicationRecord
    has_secure_password

    validates :username, uniqueness: {case_sensitive: false}
    validates :username, presence: true

    has_many :userchampions
    has_many :champions , through: :userchampions
end
