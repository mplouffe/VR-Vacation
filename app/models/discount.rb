class Discount < ApplicationRecord

  has_many :package_discounts
  has_many :packages, through: :package_discounts
  
  validates_presence_of :type, :amount
  validates_numericality_of :amount, :greater_than_or_equal_to => 0

end
