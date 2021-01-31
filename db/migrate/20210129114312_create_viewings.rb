class CreateViewings < ActiveRecord::Migration[6.0]
  def change
    create_table :viewings do |t|
      t.when :datetime, null: false

      t.timestamps
    end
  end
end
