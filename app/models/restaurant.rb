class Restaurant < ApplicationRecord
  TYPE = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: TYPE }
  validates :address, presence: true
end
