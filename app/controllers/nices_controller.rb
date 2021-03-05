class NicesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_nice

    def create
        user = current_user
        comment = Comment.find(params[:comment_id])
        nice = Nice.new(user_id: user.id, comment_id: comment.id)
        redirect_to posts_path if nice.save
    end
    def destroy
        user = current_user
        comment = Comment.find(params[:comment_id])
        nice = Nice.find_by(user_id: user.id, comment_id: comment.id)
        redirect_to posts_path if nice.delete
    end

    private
    def set_nice
        @comment = Comment.find(params[:comment_id])
    end
end
