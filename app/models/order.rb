class Order < ApplicationRecord

  validates_presence_of :status, :gst_rate, :pst_rate
  validates_numericality_of :gst_rate, :pst_rate, :greater_than_or_equal_to => 0
end
