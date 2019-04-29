class MenuCategory < ApplicationRecord
  belongs_to :menu
  validates :name, presence: true, length: { maximum: 1000 }
  has_many :items
end
