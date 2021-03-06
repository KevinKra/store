class CreateItem < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :image
      t.boolean :active
      t.integer :inventory

      t.timestamps
    end
  end
end
