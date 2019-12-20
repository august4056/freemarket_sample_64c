class PurchaseController < ApplicationController
  require 'payjp'

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
