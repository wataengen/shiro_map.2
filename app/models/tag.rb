class Tag < ApplicationRecord
  has_many :add_tags, dependent: :destroy
  has_many :post,     through:   :add_tags
  
  validates :name, presence: true, length: {maximum: 10}, uniqueness: true
end
