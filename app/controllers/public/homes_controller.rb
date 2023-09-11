class Public::HomesController < ApplicationController

  def top
    @posts = Post.where(display_status: true)
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
