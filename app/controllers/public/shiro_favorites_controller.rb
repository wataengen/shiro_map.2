class Public::ShiroFavoritesController < ApplicationController
  def index
    @member = Member.find(params[:id])
    favorites = ShiroFavorite.where(member_id: @member.id).pluck(:shiro_id)
    @shiro_favorites = Shiro.find(favorites)
  end
  def create
    @shiro = Shiro.find(params[:shiro_id])
    shiro_favorite = current_member.shiro_favorites.new(shiro_id: @shiro.id)
    shiro_favorite.save
  end

  def destroy
    @shiro = Shiro.find(params[:shiro_id])
    shiro_favorite = current_member.shiro_favorites.find_by(shiro_id: @shiro.id)
    shiro_favorite.destroy
  end
end
