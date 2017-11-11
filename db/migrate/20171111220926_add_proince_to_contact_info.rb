class AddProinceToContactInfo < ActiveRecord::Migration[5.1]
  def change
    add_reference :contact_infos, :provice, foreign_key: true
  end
end
