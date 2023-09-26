class Public::PostFavoritesController < ApplicationController
  before_action :authenticate_member!, except: [:index]
  def index
    @member = Member.find(params[:id])
    favorites = PostFavorite.where(member_id: @member.id).pluck(:post_id)
    post = Post.where(id: favorites)
    @post_favorites = post.where(draft_status: false, display_status: true).sort_by{|post| -(post[:id].to_i)}
    @post_comment = PostComment.new
  end
  def create
    @post = Post.find(params[:post_id])
    post_favorite = current_member.post_favorites.new(post_id: @post.id)
    post_favorite.save
  end

  def destroy
    @post = Post.find(params[:post_id])
    post_favorite = current_member.post_favorites.find_by(post_id: @post.id)
    post_favorite.destroy
  end
end
