class City < ApplicationRecord
  belongs_to :user, required: false
  has_many :buildings
  has_many :landmarks
  has_many :figures, through: :buildings
  # has_many :figures, through: :landmarks

  validates :name, presence: true, uniqueness: true

  def building_list
    self.buildings
  end

  def landmark_list
    self.landmarks
  end

  def figure_list
    self.figures
  end

end
