class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :comments, dependent: :destroy
  has_many :posts
  has_many :goods, dependent: :destroy
  has_many :good_posts, through: :goods, source: :post
end
