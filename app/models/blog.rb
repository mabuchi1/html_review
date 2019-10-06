class Blog < ApplicationRecord
  has_many_attached :images

  validates :images, :text, :title, presence: true
end