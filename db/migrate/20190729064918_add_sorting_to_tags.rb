class AddSortingToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :sorting, :integer, default: 0
  end
end
