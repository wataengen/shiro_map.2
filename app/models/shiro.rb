class Shiro < ApplicationRecord
  has_many   :shiro_favorites, dependent: :destroy
  has_many   :my_maps, dependent: :destroy
  has_many_attached :images

  validates :images,  limit_image: true
  validates :name,    presence: true, length: {maximum: 25}
  validates :detail,  presence: true, length: {maximum: 500}
  validates :address, presence: true, length: {maximum: 200}

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.looks(search, word, include_inactive = false)
    shiros = where("name LIKE ?", "%#{word}%")
    shiros = shiros.where(display_status: true) unless include_inactive
    shiros
  end

  def shiro_favorited_by?(member)
    shiro_favorites.exists?(member_id: member.id)
  end
  
  def mymaped_by?(member)
    my_maps.exists?(member_id: member.id)
  end
end
