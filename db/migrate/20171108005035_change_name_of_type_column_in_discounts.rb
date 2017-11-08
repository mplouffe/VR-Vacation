class ChangeNameOfTypeColumnInDiscounts < ActiveRecord::Migration[5.1]
  def change

    rename_column :discounts, :type, :kind

  end
end
