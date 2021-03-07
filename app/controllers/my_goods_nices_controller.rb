class MyGoodsNicesController < ApplicationController
  def index
    @posts = current_user.good_posts.all
  end
end
