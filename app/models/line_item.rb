class LineItem < ApplicationRecord

  validates_presence_of :quantity, :price
  validates_numericality_of :quantity, :only_integer => true, :greater_than => 0
  validates_numericality_of :price, :greater_than_or_equal_to => 0
  
end
