class AddFkToPackageSouvenir < ActiveRecord::Migration[5.1]
  def change

    add_reference :package_souvenirs, :package, foreign_key: true
    add_reference :package_souvenirs, :souvenir, foreign_key: true

  end
end
