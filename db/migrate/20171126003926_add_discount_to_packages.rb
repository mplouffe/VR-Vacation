class AddDiscountToPackages < ActiveRecord::Migration[5.1]
  def change
    add_reference :packages, :discount, index: true
  end
end
