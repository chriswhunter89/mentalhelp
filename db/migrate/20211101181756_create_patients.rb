class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.integer :age
      t.string :gender
      t.string :location
      t.text :existing_conditions
      t.string :medical_records

      t.timestamps
    end
  end
end
