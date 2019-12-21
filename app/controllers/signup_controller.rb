class SignupController < ApplicationController
  require 'payjp'
  layout 'users'
  
  before_action :set_card
  before_action :set_item

  def payment
    # @item = Item.find(params[:id])
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    # Payjp::Charge.create(
      # amount: @item.price
      # card: params['payjp-token']
      # currency: 'jpy'
    # )
  end

private

  def set_card
    @card = Card.where(user_id: current_user).first
  end
  def set_item
    # @item = Item.find(params[:item_id])
  end
end
