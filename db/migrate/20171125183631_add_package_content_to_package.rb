class AddPackageContentToPackage < ActiveRecord::Migration[5.1]
  def change
    add_reference :packages, :package_content, index: true
  end
end
