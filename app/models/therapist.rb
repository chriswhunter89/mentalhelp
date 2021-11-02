class Therapist < ApplicationRecord
  has_many :appoinments
  belongs_to :user
  has_many :mood_trackers
  has_many :patients
  has_many :messages
end
