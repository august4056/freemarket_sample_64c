class PurchaseController < ApplicationController
  require 'payjp'
  
  before_action :set_card
  before_action :set_item

  def item_confirm

  end

private

  def set_card
    @card = Card.where(user_id: current_user).first
  end
  def set_item
    @item = Item.find(params[:item_id])
  end
end
