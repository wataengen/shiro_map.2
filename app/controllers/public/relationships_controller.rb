class Public::RelationshipsController < ApplicationController
  before_action :authenticate_member!
  def create
    member = current_member.follow(params[:member_id])
    @member = Member.find(params[:member_id])
  end

  def destroy
    member = current_member.unfollow(params[:member_id])
    @member = Member.find(params[:member_id])
  end
end
