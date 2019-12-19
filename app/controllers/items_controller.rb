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
    
    @item=Item.new
    render :layout  => "application"
  end

  def create
    @item=Item.new(item_params)
    @image=Image.new(image_params)
    if  @item.save
        redirect_to root_path
    end 
  end

  def credit
  end
  
  def mypage

  end

private
def item_params
  params.require(:item).permit(:name, :detail, :category, :state, :delivery_fee, :delivery_area, :delivery_date, :price, :fee, :gross_profit, )
end

def image_params
  params.require(:image).permit(image).merge(item_id: current_item.id)
end

end