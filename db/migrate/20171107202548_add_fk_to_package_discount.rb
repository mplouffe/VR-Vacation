class AddFkToPackageDiscount < ActiveRecord::Migration[5.1]
  def change

    add_reference :package_discounts, :package, foreign_key: true
    add_reference :package_discounts, :discount, foreign_key: true

  end
end
