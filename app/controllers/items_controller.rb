class ItemsController < ApplicationController
  
  layout "items"

  def index
    @items = Item.all
  end
  
  def show
    @item = Item.find(params[:id])
    @items = Item.all
    @images = @item.images.all
    # @user = User.find(params[:id]).items.all
    # @category = Category.find(params[:id]).items
    # @bland = Bland.find(params[:id]).items
  end

  def new
    render :layout  => "application"
  end

  def credit
  end
  
  def mypage

  end


end