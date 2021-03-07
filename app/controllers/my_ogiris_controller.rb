class MyOgirisController < PostsController
  def index
    @posts = current_user.posts.all
  end
end
