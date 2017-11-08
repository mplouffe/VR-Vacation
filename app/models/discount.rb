class Discount < ApplicationRecord
  
  validates_presence_of :kind, :amount
  validates_numericality_of :amount, :greater_than_or_equal_to => 0

end
