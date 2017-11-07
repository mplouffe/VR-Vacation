class Souvenir < ApplicationRecord

  belongs_to :location
  
  has_many :package_souvenirs
  has_many :packages, through: :package_souvenirs
  validates_presence_of :name, :description, :price
  validates_numericality_of :price, :greater_than_or_equal_to => 0
end
