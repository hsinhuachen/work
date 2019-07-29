class AddPublishToCycles < ActiveRecord::Migration[5.2]
  def change
    add_column :cycles, :publish, :boolite, defaule: false
  end
end
