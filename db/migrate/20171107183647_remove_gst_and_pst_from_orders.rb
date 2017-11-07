class RemoveGstAndPstFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :pst_rate
    remove_column :orders, :gst_rate
    add_column :provinces, :pst_rate, :decimal
    add_column :provinces, :gst_rate, :decimal
    add_column :provinces, :hst_rate, :decimal
  end
end
