class Zipcode < ApplicationRecord
  belongs_to :neighborhood
  has_many :hotspots
end
