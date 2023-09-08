class Public::MembersController < ApplicationController
  def show
    @member = Member.find(params[:id])
    @posts = Post.where(member_id = params[:id])
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

  def confirm_quit
  end

  private
  def member_params
    params.require(:member).permit(:nick_name, :profile, :email, :image)
  end
end
