class Public::SearchesController < ApplicationController
  def search_top
    @tag_list = Tag.all
    @posts = Post.where(display_status: true).sort_by{|post| -(post[:id])}
    @post_comment = PostComment.new
  end

  def search_shiro_index
    @tag_list = Tag.all
    @shiros = Shiro.where(display_status: true)
    @post_comment = PostComment.new
  end

  def search_post_index
    @tag_list = Tag.all
    @posts = Post.looks(params[:search], params[:word]).sort_by{|post| -(post[:id])}
    @post_comment = PostComment.new
  end

  def search_tag_index
    @tag_list = Tag.all
    @posts = Post.looks(params[:search], params[:word]).sort_by{|post| -(post[:id])}
    # @tag = Tag.find(params[:tag_id])
    # @posts = @tag.post.where(display_status: true).sort_by{|post| -(post[:id])}
    @post_comment = PostComment.new
  end
  
  def search_tag_result
    
  end
end