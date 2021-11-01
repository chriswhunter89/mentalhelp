class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.bigint :therapist_id
      t.bigint :patient_id
      t.string :content
      t.datetime :sent
      t.datetime :read

      t.timestamps
    end
  end
end
