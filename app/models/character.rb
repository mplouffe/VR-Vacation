class Character < ApplicationRecord

  has_many :event_characters
  has_many :events, through: :event_characters
  
  validates_presence_of :name, :description

end
