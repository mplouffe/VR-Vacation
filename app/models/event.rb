class Event < ApplicationRecord

  validates_presence_of :name, :description, :price
  validates_numericality_of :price, :greater_than_or_equal_to => 0
  
end
