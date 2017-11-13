class AddImageLeftToAboutContent < ActiveRecord::Migration[5.1]
  def change
    add_column :about_contents, :image_left, :boolean
  end
end
