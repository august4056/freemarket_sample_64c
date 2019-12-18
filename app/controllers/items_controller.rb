class ItemsController < ApplicationController

  layout "items"

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
    @images = @item.images.all
  end

  def new
    render :layout  => "application"
  end

  def credit
  end
  
  def mypage

  end


end