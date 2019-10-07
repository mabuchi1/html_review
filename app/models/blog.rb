class Blog < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  validates :images, :text, :title, presence: true
end