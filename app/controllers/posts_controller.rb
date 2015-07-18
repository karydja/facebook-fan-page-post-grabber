class PostsController < ActionController::Base

  def index
    @posts = PostManager.get_posts(post_params[:fan_page_id])
  end

  private

  def post_params
    params.permit(:fan_page_id)
  end
end
