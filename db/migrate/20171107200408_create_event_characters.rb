class CreateEventCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :event_characters do |t|

      t.timestamps
    end
  end
end
