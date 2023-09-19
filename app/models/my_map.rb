class MyMap < ApplicationRecord
  belongs_to :member
  belongs_to :shiro
  
  validates :comment, presence: true, length: {maximum: 200}
end
