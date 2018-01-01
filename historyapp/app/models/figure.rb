class Figure < ApplicationRecord
  has_many :landmarks
  has_many :buildings
  has_many :cities, through: :landmarks
  has_many :cities, through: :buildings

  validates :name, presence: true, uniqueness: true
  validates :birth_date, presence: true
  validates :death_date, presence: true
  validates :hometown, presence: true
  validates :profession, presence: true
  validates :gender, presence: true
  validates :bio, presence: true


end
