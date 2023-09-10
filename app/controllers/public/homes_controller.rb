class Public::HomesController < ApplicationController
  def top
    @posts = Post.where(display_status: true)
    @post_comment = PostComment.new
  end

  def about
  end
end
