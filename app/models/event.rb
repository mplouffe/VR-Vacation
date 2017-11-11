class Event < ApplicationRecord

  belongs_to :event_type
  
  has_many :event_characters
  has_many :characters, through: :event_characters
  
  validates_presence_of :name, :description, :price
  validates_numericality_of :price, :greater_than_or_equal_to => 0
  
  mount_uploader :screenshot, ScreenshotUploader
end
