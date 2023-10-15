class Public::SearchesController < ApplicationController
  def search_top
    @tag_list = Tag.all
    @posts = Post.posts_index
    @post_comment = PostComment.new
  end

  def search_shiro_index
    @tag_list = Tag.all
    @shiros = Shiro.looks(params[:search], params[:word]).where(display_status: true)
  end

  def search_post_index
    @tag_list = Tag.all
    @posts = Post.looks(params[:search], params[:word]).posts_index
    @post_comment = PostComment.new
  end

  def search_tag_index
    @tag_list = Tag.all
    @tag = Tag.find(params[:tag_id])
    @posts = @tag.post.posts_index
    @post_comment = PostComment.new
  end

  def search_tag_result

  end
end
