class HomeController < ActionController::Base

  def index
  end

  def get_fan_page_posts
    @posts = PostManager.get_posts(home_params[:fan_page_id])
  end

  private

  def home_params
    params.permit(:fan_page_id)
  end
end
