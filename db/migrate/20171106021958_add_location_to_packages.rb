class AddLocationToPackages < ActiveRecord::Migration[5.1]
  def change
    add_reference :packages, :location,  foreign_key: true
  end
end
