class AddLocationToSouvenirs < ActiveRecord::Migration[5.1]
  def change
    add_reference :souvenirs, :location, foreign_key: true
  end
end
