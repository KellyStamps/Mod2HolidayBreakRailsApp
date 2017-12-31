class Figure < ApplicationRecord
  has_many :landmarks
  has_many :cities, through: :landmarks
  has_many :buildings
  has_many :cities, through: :buildings
end
