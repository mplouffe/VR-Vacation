class AddPhoneNumberToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :phone_number, :string
  end
end
