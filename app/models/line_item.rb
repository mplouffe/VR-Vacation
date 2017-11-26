class LineItem < ApplicationRecord

  belongs_to :order
  belongs_to :package
    
  validates_presence_of :quantity, :unit_price
  validates_numericality_of :quantity, :only_integer => true, :greater_than => 0
  
  validate :package_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      package.price
    end
  end

  def total_price
    unit_price * quantity
  end

private
  def package_present
    if package.nil?
      errors.add(:product, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
