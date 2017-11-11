class CreateContactInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_infos do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
