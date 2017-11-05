class Order < ApplicationRecord

  validates_presence_of :status, :gst_rate, :pst_rate
  validates_numericalty_of :gst_rate, :pst_rate, :greater_than => 0
end
