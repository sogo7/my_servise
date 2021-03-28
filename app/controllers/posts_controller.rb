class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
    @comments = @post.comments
  end


  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path
    else
      flash[:alert] = '変顔大喜利の投稿に失敗しました'
      redirect_to posts_path
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "削除が完了しました"
    redirect_to posts_path
  end








  private
    def post_params
      params.require(:post).permit(:ogiri, :img, :popularcount)
    end
end
