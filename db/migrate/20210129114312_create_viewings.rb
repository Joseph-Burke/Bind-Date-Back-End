class CreateViewings < ActiveRecord::Migration[6.0]
  def change
    create_table :viewings do |t|
      t.date :date
      t.time :time
      t.references :house, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
