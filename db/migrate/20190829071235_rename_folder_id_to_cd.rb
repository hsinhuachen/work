class RenameFolderIdToCd < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cds, :folder, :folder_id
  end
end
