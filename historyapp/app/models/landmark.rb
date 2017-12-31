class Landmark < ApplicationRecord
  belongs_to :city, required: false
  belongs_to :figure, required: false
end
