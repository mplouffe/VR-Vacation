class Package < ApplicationRecord

  has_many :line_items
  belongs_to :category
  belongs_to :location

  has_many :package_events
  has_many :events, through: :package_events

  has_many :package_discounts
  has_many :discounts, through: :package_discounts
  
  validates_presence_of :name, :description

  mount_uploader :screenshot, ScreenshotUploader
end
