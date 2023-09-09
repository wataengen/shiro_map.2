class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,           dependent: :destroy
  has_many :shiro_favorites, dependent: :destroy
  has_many :post_favorites,  dependent: :destroy
  has_many :post_comments,   dependent: :destroy

  has_one_attached :image

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |member|
      member.password = SecureRandom.urlsafe_base64
      member.nick_name = "ゲスト"
    end
  end
end
