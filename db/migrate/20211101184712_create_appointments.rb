class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.bigint :therapist_id
      t.bigint :patient_id
      t.datetime :time
      t.integer :duration
      t.text :location
      t.integer :price

      t.timestamps
    end
  end
end
