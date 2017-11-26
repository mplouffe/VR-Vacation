class Order < ApplicationRecord
  before_create :set_order_status
  before_save :update_subtotal

  has_many :line_items

  def subtotal
    line_items.collect { |li| li.valid? ? (li.quantity * li.unit_price) : 0 }.sum
  end

private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end 
end
