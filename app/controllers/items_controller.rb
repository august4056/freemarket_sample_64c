class ItemsController < ApplicationController
  
  layout "items"

  def index
 
  end

  def show
    
  end

  def new
    render :layout  => "application"
  end
  
  def create
    Item.create(item_params)
  end

  def mypage

  end

  def edit
    @item = Item.find(params[:id])
    render :layout  => "application"
  end

  def update
    binding.pry
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to item_path(item.id)
  end

  private
  
  def item_params
    params.require(:item).permit(:name, :image, :detail, :category_id, :state, :delivery_fee, :prefecture_id, :delivery_date, :price, :fee, :gross_profit)
  end

end