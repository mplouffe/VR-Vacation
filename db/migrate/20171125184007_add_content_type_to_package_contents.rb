class AddContentTypeToPackageContents < ActiveRecord::Migration[5.1]
  def change
    add_reference :package_contents, :content_type, index: true
  end
end
