module ApplicationHelper

  def nav_profile
    render partial: 'layouts/profile' if logged_in?
  end

  def current_user_destroy(group)
    if group.user_id == current_user.id
      link_to 'Delete', group, method: :delete, data: { confirm: 'Are you sure?' }
    end
  end
end
