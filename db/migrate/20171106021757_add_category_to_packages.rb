class AddCategoryToPackages < ActiveRecord::Migration[5.1]
  def change
    add_reference :packages, :category, foreign_key: true
  end
end
