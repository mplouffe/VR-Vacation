class FurtherAdaptOrdersTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :line_items, :price, :unit_price
    add_column :line_items, :total_price, :decimal
  end
end
