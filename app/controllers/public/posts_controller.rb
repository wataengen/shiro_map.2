class Public::PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    post = Post.new(post_params)
    post.member_id = current_member.id
    if post.save
      redirect_to post_path(post.id)
    else
      @post = Post.new
      render :new
    end
  end

  def index
    @posts = Post.where(member_id = current_member.id)

  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to post_path
    else
      @shiro = Shiro.find(params[:id])
      render :edit
    end
  end

  private
  def post_params
    params.require(:post).permit(:member_id, :add_tag, :post_text, :display_status, :image)
  end
end
