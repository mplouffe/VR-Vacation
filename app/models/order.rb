class Order < ApplicationRecord

  belongs_to :customer
  has_many :line_items
  
  validates_presence_of :status

end
