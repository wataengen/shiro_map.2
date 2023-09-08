class Tag < ApplicationRecord
  has_many :add_tags, dependent: :destroy
  has_many :post,     through:   :add_tags
end
