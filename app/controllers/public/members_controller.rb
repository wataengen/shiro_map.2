class Public::MembersController < ApplicationController
  def show
    @member = Member.find(params[:id])
    @posts = Post.where(member_id: @member.id).where(display_status: true)
    @post_comment = PostComment.new
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

  private
  def member_params
    params.require(:member).permit(:nick_name, :profile, :email, :image)
  end
end
