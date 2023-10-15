class PostComment < ApplicationRecord
  belongs_to :member
  belongs_to :post

  validates :comment, presence: true, length: {maximum: 200}

  has_one :notification, as: :subject, dependent: :destroy
  after_create_commit :create_notifications
  

  private
  def create_notifications
    Notification.create(subject: self, member: self.member, action_type: :commented_post)
  end
end
