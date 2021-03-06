class Post < ApplicationRecord
  validates :ogiri, presence: true
  validates :img,   presence: true
  belongs_to :user
  mount_uploader :img, ImgUploader
  has_many :comments, dependent: :destroy
  has_many :goods, dependent: :destroy
  has_many :users, through: :goods

  def good_by?(user)
    goods.where(user_id: user.id).exists?
  end
  
end
