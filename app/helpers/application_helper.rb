module ApplicationHelper
  def nav_profile
    render partial: 'layouts/profile' if logged_in?
  end
end
