class Menu < ApplicationRecord
  belongs_to :store
  validates :name, presence: true, length: { maximum: 1000 }
  has_many :menu_categories
end
