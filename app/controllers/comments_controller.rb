class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      count = @post.popularcount + 3
      @post.update(popularcount: count)
      redirect_to request.referer
    else
      flash[:alert] = '大喜利の投稿に失敗しました'
      redirect_to request.referer
    end
  end

  #コメント機能には削除なしに今のところはしている
  # def destroy
  #   @post = Post.find(params[:post_id])
  #   @comment = Comment.find(params[:id])
  #   @comment.destroy
  #   count = @post.popularcount - 3
  #   @post.update(popularcount: count)
  #flash[:alert] = '大喜利の投稿を削除しました'
  #   redirect_to request.referer
  # end
  

  private

    def comment_params
      params.require(:comment).permit(:ogiri)
    end
end
