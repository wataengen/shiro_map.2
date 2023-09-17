class Shiro < ApplicationRecord
  has_many   :shiro_favorites, dependent: :destroy
  has_many   :my_maps, dependent: :destroy
  has_one_attached :image

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  # def shiro_favorited_by?(member)
  # shiro_favorites.exists?(member_id: member.id)
  # end
end
