class ModifyCustomerTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :phone_number
    add_column :customers, :password, :string
  end
end
