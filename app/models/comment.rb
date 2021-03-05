class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :nices
  has_many :users, through: :nices
  
  def nice_by?(user)
    nices.where(user_id: user.id).exists?
  end
end
