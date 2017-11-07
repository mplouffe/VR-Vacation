class RemovePackageSouvenirResolution < ActiveRecord::Migration[5.1]
  def change

    drop_table :package_souvenirs
    
  end
end
