class Item < ApplicationRecord
  #has_many :recipes
  belongs_to :menu_category
  validates :name, presence: true, length: { maximum: 1000 }

end
