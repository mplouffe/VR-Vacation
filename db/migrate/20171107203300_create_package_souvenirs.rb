class CreatePackageSouvenirs < ActiveRecord::Migration[5.1]
  def change
    create_table :package_souvenirs do |t|

      t.timestamps
    end
  end
end
