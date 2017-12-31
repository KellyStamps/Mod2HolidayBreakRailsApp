class City < ApplicationRecord
  belongs_to :user, required: false
  has_many :buildings
  has_many :figures, through: :buildings
  has_many :landmarks
  has_many :figures, through: :landmarks
end
