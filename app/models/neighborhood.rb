class Neighborhood < ApplicationRecord
  belongs_to :borough
  has_many :zipcodes
  has_many :hotspots, through: :zipcodes
end
