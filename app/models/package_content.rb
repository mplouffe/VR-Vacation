class PackageContent < ApplicationRecord
  belongs_to :package
  belongs_to :content_type

  validates_presence_of :title, :content

  mount_uploader :image, AboutImageUploader
end
