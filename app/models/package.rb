class Package < ApplicationRecord

  has_many :line_items
  belongs_to :category
  belongs_to :location
  
  validates_presence_of :name, :description
end
