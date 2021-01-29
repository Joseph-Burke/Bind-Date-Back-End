class CreateViewings < ActiveRecord::Migration[6.0]
  def change
    create_table :viewings do |t|
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
