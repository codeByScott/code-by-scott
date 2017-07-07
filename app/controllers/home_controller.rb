class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @posts = Post.all.order(id: :desc).limit(3)
  end
end
