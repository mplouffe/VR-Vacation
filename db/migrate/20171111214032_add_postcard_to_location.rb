class AddPostcardToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :postcard, :string
  end
end
