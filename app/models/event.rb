class Event < ApplicationRecord

  belongs_to :event_type
  has_many :event_characters
  has_many :characters, through: :event_characters
  has_many :package_events
  has_many :packages, through: :package_events
  
  validates_presence_of :name, :description, :price
  validates_numericality_of :price, :greater_than_or_equal_to => 0
  
end
