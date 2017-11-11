class AddCharacterSpriteToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :sprite, :string
  end
end
