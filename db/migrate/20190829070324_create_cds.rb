class CreateCds < ActiveRecord::Migration[5.2]
  def change
    create_table :cds do |t|
      t.integer :cd_id
      t.text :company
      t.text :info
      t.string :user

      t.timestamps
    end
  end
end
