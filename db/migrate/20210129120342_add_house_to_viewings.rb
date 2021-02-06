class AddHouseToViewings < ActiveRecord::Migration[6.0]
  def change
    add_reference :viewings, :house, null: false, foreign_key: true
  end
end
