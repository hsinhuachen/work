class CreateCycles < ActiveRecord::Migration[5.2]
  def change
    create_table :cycles do |t|
      t.text :title
      t.string :image
      t.integer :sorting, default: 0

      t.timestamps
    end
  end
end
