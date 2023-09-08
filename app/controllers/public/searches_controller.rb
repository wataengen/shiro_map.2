class Public::SearchesController < ApplicationController
  def search_shiro_index
  end

  def search_post_index
  end

  def search_tag_index
    @tag_list = Tag.all
    @tag = Tag.find(params[:tag_id])
    @post = @tag.posts
  end
end
