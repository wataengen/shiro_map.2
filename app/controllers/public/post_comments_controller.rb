class Public::PostCommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = current_member.post_comments.new(post_comment_params)
    comment.post_id = post.id
    comment.save
    redirect_to post_path(post)
  end
  def index
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
end
