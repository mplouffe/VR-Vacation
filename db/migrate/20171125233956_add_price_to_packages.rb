class AddPriceToPackages < ActiveRecord::Migration[5.1]
  def change
    add_column :packages, :price, :decimal
  end
end
