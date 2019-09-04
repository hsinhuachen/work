class AddPublishToCycles < ActiveRecord::Migration[5.2]
  def change
    add_column :cycles, :publish, :boolean, defaule: false
  end
end
