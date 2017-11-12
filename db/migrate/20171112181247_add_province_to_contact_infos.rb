class AddProvinceToContactInfos < ActiveRecord::Migration[5.1]
  def change
    add_reference :contact_infos, :province, foreign_key: true
  end
end
