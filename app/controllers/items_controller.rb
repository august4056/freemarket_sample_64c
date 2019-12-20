class ItemsController < ApplicationController
  require 'payjp'
  layout "items"

  before_action :set_item, only: [:show, :edit, :destroy]

  def index
    @items = Item.all
  end

  def show
    # @item = Item.find(params[:id])
    @items = Item.all
    @images = @item.images.all
  end
  
  def new
    @item=Item.new
    render :layout  => "application"
    
  end


  def credit
    @item = Item.find(params[:id])
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
      amount: @item.price
      # card: params['payjp-token']
      # currency: 'jpy'
    )
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
    if @item.destroy # .include?(@item.user_id == current_user.id)
      redirect_to root_path
      flash[:success] = '商品情報を削除しました'
    else
      redirect_to item_path(item.id)
      flash[:danger] = '商品情報の削除に失敗しました'
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name, :detail, :category_id, :state, :delivery_fee, :prefecture_id, :delivery_date, :price, :fee, :gross_profit, :size, :image).merge(user_id: current_user.id)
  end
  
  def set_item
    @item = Item.find(params[:id])
  end

end