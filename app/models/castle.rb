class Castle < ApplicationRecord
  has_many :wizzards, dependent: :destroy
  validates :name, presence: true
  validates :img, presence: true
end
