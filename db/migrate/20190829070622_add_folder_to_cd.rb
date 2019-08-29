class AddFolderToCd < ActiveRecord::Migration[5.2]
  def change
    add_column :cds, :folder, :integer
  end
end
