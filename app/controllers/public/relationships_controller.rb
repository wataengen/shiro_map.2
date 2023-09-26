class Public::RelationshipsController < ApplicationController
  before_action :authenticate_member!
  def create
    member = current_member.follow(params[:member_id])
    @member = Member.find(params[:member_id])
    # redirect_to request.referer
  end

  def destroy
    member = current_member.unfollow(params[:member_id])
    @member = Member.find(params[:member_id])
    # redirect_to request.referer
  end
end
