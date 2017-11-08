class RemoveDescriptionFromEventType < ActiveRecord::Migration[5.1]
  def change

    remove_column :event_types, :description
  end
end
