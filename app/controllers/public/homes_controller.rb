class Public::HomesController < ApplicationController

  def top
    @shiros = Shiro.where(display_status: true)
    @posts = Post.where(display_status: true).sort_by{|post| -(post[:id])}
    #ログイン前は公開済みの投稿が最新順に表示される
    if member_signed_in?
      @member = Member.find(current_member.id)
      follows = @member.following_members
      @followers_posts = Post.where(member_id: follows).where(display_status: true)
      @member_posts = Post.where(member_id: @member)
      @time_line_posts = (@followers_posts + @member_posts).sort_by{|post| -(post[:id])}
      #ログイン後はフォロー会員と自分の投稿が最新順に表示される
    end
    @post_comment = PostComment.new
  end

  def about
  end

  def mypage
    @member = current_member
    @posts = Post.where(member_id: @member.id).where(display_status: true)
    @post_comment = PostComment.new
  end
end