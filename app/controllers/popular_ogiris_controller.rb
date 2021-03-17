class PopularOgirisController < ApplicationController
  def index
    @posts = Post.order('popularcount desc').limit(30)
  end
end
