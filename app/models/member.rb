class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,           dependent: :destroy
  has_many :shiro_favorites, dependent: :destroy
  has_many :post_favorites,  dependent: :destroy
  has_many :post_comments,   dependent: :destroy
  has_many :my_maps,         dependent: :destroy

  has_many :followers, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :followeds, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :following_members, through: :followers, source: :followed
  has_many :follower_members,  through: :followeds, source: :follower

  has_one_attached :icon_image
  has_one_attached :back_ground_image

  validates :nick_name, presence: true, length: {maximum: 25}, uniqueness: true
  validates :profile,   length: {maximum: 200}

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |member|
      member.password = SecureRandom.urlsafe_base64
      member.nick_name = "ゲスト"
    end
  end

  def follow(member_id)
    followers.create(followed_id: member_id)
  end

  def unfollow(member_id)
    followers.find_by(followed_id: member_id).destroy
  end

  def following?(member)
    following_members.include?(member)
  end
end
