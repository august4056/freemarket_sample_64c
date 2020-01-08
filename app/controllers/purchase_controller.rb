class PurchaseController < ApplicationController
  require 'payjp'
  
  before_action :set_card
  before_action :set_item

  def item_confirm
    # if @card.blank?
    #   #登録された情報がない場合にカード登録画面に移動
    #   redirect_to controller: "cards", action: "credit"
    # else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      #保管した顧客IDでpayjpから情報取得
      # customer = Payjp::Customer.retrieve(@card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      # @default_card_information = customer.cards.retrieve(@card.card_id)
    # end
  end

private

  def set_card
    @card = Card.where(user_id: current_user).first
  end
  
  def set_item
    @item = Item.find(params[:id])
  end

end