class NewArrivalsController < ApplicationController
  def index
    @posts = Post.all.created_desc.limit(30)


    ## TODO: 投稿数が増えたらこちらに変える
    # time_now = Time.current
    # one_month_ago = time_now.ago(1.month)
    # @posts = Post.where(create_at: one_month_ago..time_now).created_desc.limit(30)
  end
end
