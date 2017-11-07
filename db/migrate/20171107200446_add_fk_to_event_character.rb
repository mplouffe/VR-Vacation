class AddFkToEventCharacter < ActiveRecord::Migration[5.1]
  def change
    add_reference :event_characters, :event, foreign_key: true
    add_reference :event_characters, :character, foreign_key: true
  end
end
