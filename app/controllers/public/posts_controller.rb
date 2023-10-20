class Public::PostsController < ApplicationController
  before_action :is_matching_login_member, only: [:edit, :update]
  def index
    redirect_to root_path
  end
  def new
    @post = Post.new
    @tag_list = @post.tags.pluck(:name).join(',')
  end
  def create
    @post = Post.new(post_params)
    @post.member_id = current_member.id
    tag_list = params[:post][:name].split(',')
    if @post.save
      @post.save_tags(tag_list)
      redirect_to post_path(@post.id)
    else
      render :new
    end
  end
  # 下書き一覧を表示
  def draft_index
    @posts = Post.where(member_id: current_member.id).where(display_status: true, draft_status: false).order(updated_at: :desc)
    @tag_list = Tag.all
  end

  def show
    @post = Post.find(params[:id])
    if @post.draft_status == true
      @tag_list = @post.tags.pluck(:name).join(',')
      @post_tags = @post.tags
      @post_comment = PostComment.new
    else
      redirect_to root_path
    end
  end

  def edit
    @post = Post.find(params[:id])
    @tag_list = @post.tags.pluck(:name).join(',')
  end

  def update
    @post = Post.find(params[:id])
    tag_list = params[:post][:name].split(',')
    if @post.update(post_params)
      @post.save_tags(tag_list)
      redirect_to post_path(@post.id)
    else
      render :edit
    end
  end

  def delet_post
    post =Post.find(params[:post_id])
    if post.update(display_status: false)
      redirect_to mypage_path
    else
      @post = Post.find(params[:id])
      @tag_list = post.tags.pluck(:name).join(',')
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:member_id, :post_text, :draft_status, :display_status, images: [])
  end

  def is_matching_login_member
    post = Post.find(params[:id])
    unless post.member.id == current_member.id
      redirect_to root_path
    end
  end

end
