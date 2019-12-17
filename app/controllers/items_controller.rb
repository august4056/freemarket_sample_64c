class ItemsController < ApplicationController
  
  layout "items"

  def index
 
  end

  def show
    
  end

  def new
    render :layout  => "application"
  end
  
  def mypage

  end

  def edit
    @item = Item.find(params[:id])
    render :layout  => "application"
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to item_path(item.id)
  end

end