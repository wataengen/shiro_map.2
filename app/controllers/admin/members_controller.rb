class Admin::MembersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    member = Member.find(params[:id])
    if member.update(member_params)
      redirect_to admin_member_path(member.id)
    else
      @shiro = Shiro.find(params[:id])
      render :edit
    end
  end

  def show_post_comment
    @member = Member.find(params[:id])

  end

  private
  def member_params
    params.require(:member).permit(:nick_name, :email, :is_deleted)
  end
end
