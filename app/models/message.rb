class Message < ApplicationRecord
  belongs_to :member
  belongs_to :room

  validates :message, presence: true, length: { maximum: 140 }
end
