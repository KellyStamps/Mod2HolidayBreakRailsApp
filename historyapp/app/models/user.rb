class User < ApplicationRecord
  has_secure_password
  has_many :cities
  has_many :buildings, through: :cities
  has_many :landmarks, through: :cities

  validates :name, uniqueness: true, presence: true
  validates :password_digest, presence: true
end
