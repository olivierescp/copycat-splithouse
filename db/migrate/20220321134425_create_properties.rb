class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.integer :size
      t.integer :part_price
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
