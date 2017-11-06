class AddPackageToLineItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :line_items, :package, foreign_key: true
  end
end
