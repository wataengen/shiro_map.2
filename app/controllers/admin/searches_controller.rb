class Admin::SearchesController < ApplicationController
  before_action :authenticate_admin!
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
