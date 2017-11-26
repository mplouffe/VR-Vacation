class Package < ApplicationRecord

  has_many :line_items
  belongs_to :category
  belongs_to :discount

  has_many :package_contents
  
  validates_presence_of :name, :description, :price
  validates_numericality_of :price, :greater_than_or_equal_to => 0

  mount_uploader :screenshot, ScreenshotUploader
end
