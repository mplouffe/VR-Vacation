class CreatePackageDiscounts < ActiveRecord::Migration[5.1]
  def change
    create_table :package_discounts do |t|

      t.timestamps
    end
  end
end
