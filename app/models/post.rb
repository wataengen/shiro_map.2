class Post < ApplicationRecord
  has_many :add_tags,       dependent: :destroy
  has_many :tags,           through:   :add_tags
  has_many :post_favorites, dependent: :destroy
  has_many :post_comments,  dependent: :destroy

  belongs_to :member

  has_many_attached :images

  validates :images, limit_image: true

  def save_tags(tags)
    current_tags = self.tags.pluck(:name) unless self.tags.nil?
    old_tags = current_tags - tags
    new_tags = tags - current_tags

    old_tags.each do |old_name|
      self.tags.delete Tag.find_by(name:old_name)
    end

    new_tags.each do |new_name|
      tag = Tag.find_or_create_by(name:new_name)
      self.tags << tag
    end
  end

  def self.looks(search, word, include_inactive = false)
    posts = where("post_text LIKE ?", "%#{word}%")
    posts = posts.where(display_status: true) unless include_inactive
    posts
  end

  def post_favorited_by?(member)
   post_favorites.exists?(member_id: member.id)
  end
end
