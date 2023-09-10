class Public::MyMapsController < ApplicationController
  def index
    @member = Member.find(params[:id])
    @mymaps = MyMap.where(member_id: @member.id)
  end
end
