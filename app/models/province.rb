class Province < ApplicationRecord

  has_many :customers
  
  validates_presence_of :name, :abbrv
end
