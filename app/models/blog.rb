class Blog < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  has_many :comments
  validates :images, :text, :title, presence: true

  def self.search(search)
    return Blog.all unless search
    Blog.where('title LIKE(?)', "%#{search}%")
  end
end