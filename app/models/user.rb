class User < ApplicationRecord
  has_secure_password
  has_many :favorited_places
end
