class AddAmountColumnToDiscount < ActiveRecord::Migration[5.1]
  def change

    add_column :discounts, :amount, :decimal
  end
end
