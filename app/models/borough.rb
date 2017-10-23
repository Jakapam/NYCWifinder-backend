class Borough < ApplicationRecord
  has_many :neighborhoods
  has_many :zipcodes, through: :neighborhoods
end
