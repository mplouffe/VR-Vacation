class EventType < ApplicationRecord

  has_many :events

  validates_presence_of :title
    
end
