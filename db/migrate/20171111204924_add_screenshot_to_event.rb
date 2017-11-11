class AddScreenshotToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :screenshot, :string
  end
end
