class Public::MyMapsController < ApplicationController
  def index
    @member = Member.find(params[:id])
    @posts = Post.where(member_id = params[:id]).where(display_status: true)
  end
end
