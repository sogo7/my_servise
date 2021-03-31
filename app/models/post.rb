class Post < ApplicationRecord
  validates :ogiri, presence: true, length: { maximum: 55 }
  validates :img,   presence: true

  mount_uploader :img, ImgUploader

  belongs_to :user
  
  has_many :comments, dependent: :destroy
  has_many :goods,    dependent: :destroy
  has_many :users, through: :goods
  has_many :users, through: :nices

  scope :created_desc, -> { order(created_at: :desc) } 
  scope :populars,     -> { order(popularcount: :desc).limit(30) }

  def good_by?(user)
    goods.where(user_id: user.id).exists?
  end
  
end
