class Public::MessagesController < ApplicationController
  before_action :authenticate_member!, :only => [:create]

  def create
    if Entry.where(:member_id => current_member.id, :room_id => params[:message][:room_id]).present?
      @message = Message.create(message_params)
      redirect_to room_path(@message.room.id)
    else
      redirect_to request.referer
    end
  end

  private
  def message_params
    params.require(:message).permit(:member_id, :message, :room_id).merge(:member_id => current_member.id)
  end

end
