class Blog < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  has_many :comments
  validates :images, :text, :title, presence: true
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  
  def self.search(search)
    return Blog.all unless search
    Blog.where('title LIKE(?)', "%#{search}%")
  end
end