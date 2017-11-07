class CreatePackageEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :package_events do |t|

      t.timestamps
    end
  end
end
