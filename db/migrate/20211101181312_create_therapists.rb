class CreateTherapists < ActiveRecord::Migration[6.0]
  def change
    create_table :therapists do |t|
      t.integer :age
      t.string :gender
      t.string :organisation
      t.string :location
      t.string :specialises_in
      t.integer :years_experience
      t.string :qualifications
      t.text :bio
      t.text :rates

      t.timestamps
    end
  end
end
