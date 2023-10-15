class Public::NotificationsController < ApplicationController
  def index
    @notifications = current_member.notifications.order(created_at: :desc)
    @notifications.where(checked: false).each do |notification|
      notification.update(checked: true)
    end
  end

  def destroy
    @notifications = current_member.notifications.destroy_all
    redirect_to member_notifications_path(current_member)
  end

end
