class GoodsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_good

    def create
        user = current_user
        post = Post.find(params[:post_id])
        good = Good.new(user_id: user.id, post_id: post.id)
        redirect_to posts_path if good.save
    end
    def destroy
        user = current_user
        post = Post.find(params[:post_id])
        good = Good.find_by(user_id: user.id, post_id: post.id)
        redirect_to posts_path if good.delete
    end

    private
    def set_good
        @post = Post.find(params[:post_id])
    end
end
