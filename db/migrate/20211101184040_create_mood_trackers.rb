class CreateMoodTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :mood_trackers do |t|
      t.bigint :therapist_id
      t.bigint :patient_id
      t.text :questions
      t.text :answers
      t.text :additional_notes

      t.timestamps
    end
  end
end
