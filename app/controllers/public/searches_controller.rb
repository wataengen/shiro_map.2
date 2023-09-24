class Public::SearchesController < ApplicationController
  def search_top
    @tag_list = Tag.all
    @posts = Post.where(draft_status: true).sort_by{|post| -(post[:id])}
    @post_comment = PostComment.new
  end

  def search_shiro_index
    @tag_list = Tag.all
    @shiros = Shiro.looks(params[:search], params[:word]).where(draft_status: true)
  end

  def search_post_index
    @tag_list = Tag.all
    @posts = Post.looks(params[:search], params[:word]).where(draft_status: true).sort_by{|post| -(post[:id])}
    @post_comment = PostComment.new
  end

  def search_tag_index
    @tag_list = Tag.all
    @tag = Tag.find(params[:tag_id])
    @posts = @tag.post.where(draft_status: true).sort_by{|post| -(post[:id])}
    @post_comment = PostComment.new
  end

  def search_tag_result

  end
end
