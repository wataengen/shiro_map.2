class Public::MessagesController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def create
    if Entry.where(:member_id => current_user.id, :room_id => params[:message][:room_id]).present?
      @message = Message.create(params.require(:message).permit(:member_id, :content, :room_id).merge(:member_id => current_member.id))
      redirect_to "/rooms/#{@message.room_id}"
    else
      redirect_to request.referer
    end
  end

end
