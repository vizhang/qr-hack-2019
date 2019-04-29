class Business < ApplicationRecord
  has_many :stores
  validates :name, presence: true, length: { maximum: 1000 }

end
