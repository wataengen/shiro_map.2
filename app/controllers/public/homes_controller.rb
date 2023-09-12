class Public::HomesController < ApplicationController

  def top
    @posts = Post.where(display_status: true).sort_by{|post| -(post[:id])}
    if member_signed_in?
      @member = Member.find(current_member.id)
      follows = @member.following_members
      @followers_posts = Post.where(member_id: follows).where(display_status: true).sort_by{|post| -(post[:id])}
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
