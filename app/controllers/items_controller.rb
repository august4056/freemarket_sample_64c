class ItemsController < ApplicationController
  
  layout "items"

  def index
   @items = Item.all
  end
  
  def show
    @item = Item.find(params[:id])
    # @user = @item.includes(:user)
    @items = Item.all
    @images = @item.images.find(params[:id])
  end

  def new
    render :layout  => "application"
  end

  def credit
  end
  
  def mypage

  end


end