class GoodsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    good = Good.new(user_id: current_user.id, post_id: @post.id)
    good.save
    count = @post.popularcount + 1
    @post.update(popularcount: count)
  end

  def destroy
    good = Good.find_by(user_id: current_user.id, post_id: @post.id)
    good.delete
    count = @post.popularcount - 1
    @post.update(popularcount: count)
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end
end
