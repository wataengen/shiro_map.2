class Public::HomesController < ApplicationController

  def top
    @shiros = Shiro.where(display_status: true)
    #ログイン前は公開済みの投稿が投稿順に表示される
    posts = Post.all
    @posts = posts.posts_index

    if member_signed_in?
      @member = Member.find(current_member.id)
      follows = @member.following_members
      @followers_posts = Post.where(member_id: follows).posts_index
      @member_posts = Post.where(member_id: @member).posts_index
      # フォロワーの投稿がゼロの場合の条件分岐
      if @folowers_posts == 0
        @time_line_posts = @member_posts
      else
        #ログイン後はフォロー会員と自分の投稿が最新順に表示される
        @time_line_posts = Post.where(member_id: [@member.id, *follows]).posts_index
      end
    end
    @post_comment = PostComment.new
  end

  def about
  end

  def mypage
    @member = current_member
    posts = Post.all
    @posts = posts.posts_index
    @post_comment = PostComment.new
  end
end
