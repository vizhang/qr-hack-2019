class Store < ApplicationRecord
  validates :name, presence: true, length: { maximum: 1000 }
  belongs_to :business
  has_many :menus
  has_one_attached :coverimage
end
