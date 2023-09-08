class Post < ApplicationRecord
  has_many :add_tags, dependent: :destroy
  has_many :tags,     through:   :add_tags

  has_one_attached :image

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
end
