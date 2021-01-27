class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|

      t.string :name

      t.timestamps
    end
  end
end
