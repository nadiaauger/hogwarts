class Wizzard < ApplicationRecord
  belongs_to :castle
  validates :name, presence: true
  validates :img, presence: true
end
