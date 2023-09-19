class Admin::PostCommentsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @post_comments = PostComment.all
  end

  def show
    @post = Post.find(params[:id])
    @tag_list = @post.tags.pluck(:name).join(',')
    @post_tags = @post.tags
    @post_comment = PostComment.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @tag_list = @post.tags.pluck(:name).join(',')
    @post_tags = @post.tags
    @post_comment = PostComment.find(params[:id])
  end
  def update
    post_comment = PostComment.find(params[:id])
    if post_comment.update(post_comment_params)
      redirect_to admin_post_comment_path(post_comment)
    else
      @post = Post.find(params[:id])
      @tag_list = @post.tags.pluck(:name).join(',')
      @post_tags = @post.tags
      @post_comment = PostComment.find(params[:id])
      render :edit
    end
  end

  private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
