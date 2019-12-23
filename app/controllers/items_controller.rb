class ItemsController < ApplicationController

  layout "items"

  before_action :set_item, only: [:show, :edit, :destroy]

  def index
    @items = Item.all
  end

  def show
    @items = Item.all
    # @images = @item.images.all
  end

  def new
    @item=Item.new
    render :layout  => "application"
    
  end

  def create
    @item=Item.new(item_params)
    if @item.save
        redirect_to root_path
    end 
  end


  def mypage
  end


  def edit
    render :layout  => "application"
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to item_path(item.id)
    else
      redirect_to edit_item_path(item.id)
    end
  end

  def destroy
    @item.destroy # if @item.user_id == current_user.id
    redirect_to root_path
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name, :detail, :category_id, :state, :delivery_fee, :prefecture_id, :delivery_date, :price, :fee, :gross_profit, :user_id, :size, :image)
  end
  
  def set_item
    @item = Item.find(params[:id]) 
  end



end