class Shiro < ApplicationRecord
  has_many   :shiro_favorites, dependent: :destroy
  has_one_attached :image

  def shiro_favorited_by?(member)
   shiro_favorites.exists?(member_id: member.id)
  end
end
