class Public::RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id])
    if Entry.where(:member_id => current_member.id, :room_id => @room.id).present?
      @messages = @room.messages
      @message = Message.new
      @entries = @room.entries
    else
      redirect_to request.referer
    end

  end
  def create
    if room = Room.create(:member_id => 1)
    @entry1 = Entry.create(:room_id => room.id, :member_id => current_member.id)
    @entry2 = Entry.create(entry_params.merge(:room_id => room.id))
    redirect_to room_path(room.id)
    else
    redirect_to request.referer
    end
  end

  private
  def entry_params
    params.require(:room).permit(:member_id)
  end
end
