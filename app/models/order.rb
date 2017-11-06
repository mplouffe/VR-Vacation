class Order < ApplicationRecord

  belongs_to :customer
  has_many :line_items
  
  validates_presence_of :status, :gst_rate, :pst_rate
  validates_numericality_of :gst_rate, :pst_rate, :greater_than_or_equal_to => 0
end
