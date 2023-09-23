class Public::ShirosController < ApplicationController
  
  def index
    @shiros = Shiro.where(display_status: true)
  end

  def show
    @shiro = Shiro.find(params[:id])
  end
end
