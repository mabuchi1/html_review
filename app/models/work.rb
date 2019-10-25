class Work < ApplicationRecord
  has_one_attached :work_image
  validates :work_image, :name, :url, presence: true
end