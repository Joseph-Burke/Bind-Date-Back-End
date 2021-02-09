class CreateViewings < ActiveRecord::Migration[6.0]
  def change
    create_table :viewings do |t|
      t.datetime :when, null: false

      t.timestamps
    end
  end
end
