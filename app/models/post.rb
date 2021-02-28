class Post < ApplicationRecord
  validates :ogiri, presence: true
  validates :img,   presence: true
  belongs_to :user
  mount_uploader :img, ImgUploader
  has_many :comments, dependent: :destroy
end
