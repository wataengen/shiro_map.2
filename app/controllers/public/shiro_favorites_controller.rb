class Public::ShiroFavoritesController < ApplicationController
  def index
    @member = Member.find(params[:member_id])
    @posts = Post.where(member_id = params[:id]).where(display_status: true)
  end
  def create
    shiro = Shiro.find(params[:shiro_id])
    shiro_favorite = current_member.shiro_favorites.new(shiro_id: shiro.id)
    shiro_favorite.save
    redirect_to request.referer
  end

  def destroy
    shiro = Shiro.find(params[:shiro_id])
    shiro_favorite = current_member.shiro_favorites.find_by(shiro_id: shiro.id)
    shiro_favorite.destroy
    redirect_to request.referer
  end
end
