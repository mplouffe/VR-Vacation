class AddScreenshotToPackage < ActiveRecord::Migration[5.1]
  def change
    add_column :packages, :screenshot, :string
  end
end
