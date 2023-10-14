class Public::MembersController < ApplicationController
  before_action :is_matching_login_member, only: [:edit, :update]
  def show
    @member = Member.find(params[:id])
    @posts = Post.where(member_id: @member.id).where(draft_status: true, display_status: true).sort_by{|post| -(post[:id])}
    @post_comment = PostComment.new
    @following_users = @member.following_members
    @follower_users = @member.follower_members

    # DM機能の用の記述
    @current_member_entry=Entry.where(member_id: current_member.id)
    @member_entry=Entry.where(member_id: @member.id)
    unless @member == current_member
      @current_member_entry.each do |cme|
        @member_entry.each do |me|
          if cme.room_id == me.room_id then
            @is_room = true
            @room_id = cme.room_id
          end
        end
      end
      if @is_room
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def edit
    @member = Member.find(params[:id])
  end
  def update
    member = Member.find(params[:id])
    if member.update(member_params)
      redirect_to member_path(member.id)
    else
      @member = Member.find(params[:id])
      render :edit
    end
  end
  def quit
    @member = current_member
    @member.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  def confirm_quit
    @member = Member.find(params[:id])
  end

  def follows
    member = Member.find(params[:id])
    @members = member.following_members
  end

  def followers
    member = Member.find(params[:id])
    @members = member.follower_members
  end
  private

  def member_params
    params.require(:member).permit(:nick_name, :icon_image, :back_ground_image, :profile, :email)
  end

  def is_matching_login_member
    member = Member.find(params[:id])
    unless member.id == current_member.id
      redirect_to root_path
    end
  end
end
