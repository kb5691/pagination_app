class PostsController < ApplicationController
  # 1ページの表示数
  PER_PAGE = 10

  def index
    @posts = Post.order(id: :desc).page(params[:page]).per(PER_PAGE)
  end

  def create
    post = Post.create!(post_params)
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
