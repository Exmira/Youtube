class Post < ApplicationRecord

  has_one_attached :image
  has_one_attached :video
  acts_as_punchable
  belongs_to :user

  has_many :likes
end
