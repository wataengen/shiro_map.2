class Public::PostFavoritesController < ApplicationController
  def index
    @member = Member.find(params[:id])
    favorites = PostFavorite.where(member_id: @member.id).pluck(:post_id)
    @post_favorites = Post.find(favorites)
    @post_comment = PostComment.new
  end
  def create
    post = Post.find(params[:post_id])
    post_favorite = current_member.post_favorites.new(post_id: post.id)
    post_favorite.save
    redirect_to request.referer
  end

  def destroy
    post = Post.find(params[:post_id])
    post_favorite = current_member.post_favorites.find_by(post_id: post.id)
    post_favorite.destroy
    redirect_to request.referer
  end
end
