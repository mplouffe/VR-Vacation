class Package < ApplicationRecord

  has_many :line_items
  belongs_to :category
  
  has_many :package_contents
  has_many :package_discounts
  has_many :discounts, through: :package_discounts
  
  validates_presence_of :name, :description

  mount_uploader :screenshot, ScreenshotUploader
end
