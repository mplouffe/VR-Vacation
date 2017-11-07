class PackageDiscount < ApplicationRecord

  belongs_to :package
  belongs_to :discount

end
