class Patient < ApplicationRecord
  has_many :appoinments
  belongs_to :user
  has_one :mood_tracker
  has_one :therapist
  has_many :messages
end
