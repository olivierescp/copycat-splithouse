class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.integer :part_number
      t.references :user, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
