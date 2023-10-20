class Admin::ShirosController < ApplicationController
  before_action :authenticate_admin!
  def index
    @shiros = Shiro.all
  end

  def new
    @shiro = Shiro.new
  end

  def create
    @shiro = Shiro.new(shiro_params)
    if @shiro.save
      redirect_to admin_shiro_path(@shiro.id)
    else
      render :new
    end
  end

  def show
    @shiro = Shiro.find(params[:id])
  end

  def edit
    @shiro = Shiro.find(params[:id])
  end
  def update
    @shiro = Shiro.find(params[:id])
    if @shiro.update(shiro_params)
      redirect_to admin_shiro_path(@shiro.id)
    else
      render :edit
    end
  end

  private

  def shiro_params
    params.require(:shiro).permit(:name, :detail, :address, :latitude, :longitude, :display_status, images: [])
  end
end
