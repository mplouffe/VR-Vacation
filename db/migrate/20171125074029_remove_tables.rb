class RemoveTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :event_characters
    drop_table :characters
    drop_table :package_events
    drop_table :events
    drop_table :event_types

    remove_reference :packages, :location, index: true, foreign_key: true

    drop_table :locations
  end
end
