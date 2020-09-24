class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :notifications, dependent: :destroy
 
  has_rich_text :body

  scope :sort_by_time, ->{order created_at: :desc}
end
