class Landmark < ApplicationRecord
  belongs_to :city, required: false
  belongs_to :figure, required: false

  validates :name, presence: true
  validates :event_date, presence: true
  validates :address, presence: true
end
