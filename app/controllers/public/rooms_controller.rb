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
    if @room = Room.create
    @entry1 = Entry.create(:room_id => @room.id, :member_id => current_member.id)
    @entry2 = Entry.create(params.require(:entry).permit(:member_id, :room_id).merge(:room_id => @room.id))
    redirect_to member_room_path(member_id: member.id, id: @room.id)
    else
     redirect_to request.referer
    end
  end
end
