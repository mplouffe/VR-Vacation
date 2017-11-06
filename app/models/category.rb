class Category < ApplicationRecord

  has_many :packages
  
  validates_presence_of :name, :description
  
end
