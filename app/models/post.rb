class Post < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: :slugged



  has_one_attached :image
  has_one_attached :video
  acts_as_punchable
  belongs_to :user

  has_many :likes

  validates :image, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "title", "updated_at", "user_id"]
  end
end
