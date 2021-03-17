class NicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment

  def create
    nice = Nice.new(user_id: current_user.id, comment_id: @comment.id)
    nice.save
  end
  
  def destroy
    nice = Nice.find_by(user_id: current_user.id, comment_id: @comment.id)
    nice.delete
  end

  private
  def set_comment
    @comment = Comment.find(params[:comment_id])
  end
end
