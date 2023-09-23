class Public::PostCommentsController < ApplicationController
  before_action :authenticate_member!
  before_action :is_matching_login_member, only: [:edit, :update]
  def create
    post = Post.find(params[:post_id])
    comment = current_member.post_comments.new(post_comment_params)
    comment.post_id = post.id
    if comment.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end

  def index
  end

  def show
    @post_comment = PostComment.find(params[:id])
    @post = Post.find(@post_comment.post_id)
    @tag_list = @post.tags.pluck(:name).join(',')
    @post_tags = @post.tags
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
      redirect_to post_comment_path(post_comment)
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

  def is_matching_login_member
    post_comment = PostComment.find(params[:id])
    unless post_comment.member.id == current_member.id
      redirect_to root_path
    end
  end
end
