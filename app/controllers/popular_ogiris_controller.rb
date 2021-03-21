class PopularOgirisController < ApplicationController
  def index
    @posts = Post.populars
  end
end
