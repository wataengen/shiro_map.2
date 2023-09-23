class Public::PostsController < ApplicationController
  def new
    @post = Post.new
    @tag_list = @post.tags.pluck(:name).join(',')
  end
  def create
    post = Post.new
    post.member_id = current_member.id
    tag_list = params[:post][:name].split(',')
    if post.save
      post.save_tags(tag_list)
      redirect_to post_path(post.id)
    else

      @post = Post.new
      render :new
    end
  end

  def draft_index
    @posts = Post.where(member_id: current_member.id).where(display_status: false).sort_by{|post| -(post[:id].to_i)}
    @tag_list = Tag.all
  end

  def show
    @post = Post.find(params[:id])
    @tag_list = @post.tags.pluck(:name).join(',')
    @post_tags = @post.tags
    @post_comment = PostComment.new
  end

  def edit
    @post = Post.find(params[:id])
    @tag_list = @post.tags.pluck(:name).join(',')
  end

  def update
    post = Post.find(params[:id])
    tag_list = params[:post][:name].split(',')
    if post.update(post_params)
      post.save_tags(tag_list)
      redirect_to post_path
    else
      @shiro = Shiro.find(params[:id])
      render :edit
    end
  end

  private
  def post_params
    params.require(:post).permit(:member_id, :post_text, :display_status, images: [])
  end
end
