class Building < ApplicationRecord
  belongs_to :city, required: false
  belongs_to :figure, required: false

  validates :name, presence: true
  validates :date_built, presence: true
  validates :address, presence: true
end
