class Shiro < ApplicationRecord
  has_many   :shiro_favorites, dependent: :destroy
  has_many   :my_maps, dependent: :destroy
  has_one_attached :image

  validates :name,    presence: true, length: {maximum: 25}
  validates :detail,  presence: true, length: {maximum: 500}
  validates :address, presence: true, length: {maximum: 200}

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def shiro_favorited_by?(member)
    shiro_favorites.exists?(member_id: member.id)
  end
end
