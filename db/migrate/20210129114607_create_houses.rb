class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :location
      t.text :description
      t.integer :bedrooms
      t.integer :bathrooms

      t.timestamps
    end
  end
end
