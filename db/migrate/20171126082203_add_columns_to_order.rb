class AddColumnsToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :subtotal, :decimal
  end
end
