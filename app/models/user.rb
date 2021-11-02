class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :therapists
  has_many :patients
  has_one_attached :photo

  validates :email, presence: true, uniqueness: true, confirmation: { case_sensitive: false },
  format: { with: VALID_EMAIL_REGEX, multiline: true }

  validates :password, presence: true, length: { in: 6..20 }
  validates :password, confirmation: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
