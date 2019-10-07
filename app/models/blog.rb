class Blog < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  has_many :comments
  validates :images, :text, :title, presence: true
end