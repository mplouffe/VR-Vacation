class Province < ApplicationRecord

  has_many :customers
  has_many :contact_infos
  
  validates_presence_of :name, :abbrv, :pst_rate
  validates_numericality_of :pst_rate, :greater_than_or_equal_to => 0

end
