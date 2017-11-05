class CreateEventTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :event_types do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
