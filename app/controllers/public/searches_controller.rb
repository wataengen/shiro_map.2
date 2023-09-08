class Public::SearchesController < ApplicationController
  def search_top
    @tag_list = Tag.all
    @posts = Post.where(display_status: true)
  end

  def search_shiro_index
    @tag_list = Tag.all

  end

  def search_post_index
    @tag_list = Tag.all
    @posts = Post.looks(params[:search], params[:word])

  end

  def search_tag_index
    @tag_list = Tag.all
    @tag = Tag.find(params[:tag_id])
    @posts = @tag.post.where(display_status: true)
  end
end
