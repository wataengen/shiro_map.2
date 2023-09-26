class Public::MyMapsController < ApplicationController
  def index
    @member = Member.find(params[:id])
    mymap = MyMap.where(member_id: @member.id).pluck(:shiro_id)
    @my_maps = Shiro.find(mymap)
  end

  def create
    @shiro = Shiro.find(params[:shiro_id])
    my_map = current_member.my_maps.new(shiro_id: @shiro.id, comment: "")
    my_map.save
  end

  def destroy
    @shiro = Shiro.find(params[:shiro_id])
    my_map = current_member.my_maps.find_by(shiro_id: @shiro.id)
    my_map.destroy
  end

end
