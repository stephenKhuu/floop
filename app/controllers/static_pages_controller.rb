class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @goal  = current_user.goals.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def feedback
    @feedback_user = User.last
  end

  def help
  end

  def contact
  end
end
