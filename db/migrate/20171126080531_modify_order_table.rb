class ModifyOrderTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :status
    add_reference :orders, :order_status, index: true
  end
end
