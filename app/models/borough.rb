class Borough < ApplicationRecord
  has_many :neighborhoods
  has_many :zipcodes, through: :neighborhoods
  has_many :hotspots, through: :zipcodes
end
