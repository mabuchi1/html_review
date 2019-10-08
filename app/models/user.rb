class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :blogs
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :like_blogs, through: :likes, source: :blog
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
