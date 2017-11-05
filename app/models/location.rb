class Location < ApplicationRecord

  validates_presence_of :name, :description, :price
  validates_numericality_of :price, :greater_than => 0
end
