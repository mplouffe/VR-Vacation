class AddFkToPackageEvent < ActiveRecord::Migration[5.1]
  def change
    add_reference :package_events, :event, foreign_key: true
    add_reference :package_events, :package, foreign_key: true
  end
end
