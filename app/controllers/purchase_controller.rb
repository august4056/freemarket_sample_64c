class PurchaseController < ApplicationController
  require 'payjp'
  
  before_action :set_card, :set_item
        
  def index
    if @card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to controller: "cards", action: "new"
    else
      Payjp.api_key = 'sk_test_608b28bb0addb6bcaa776aa4'
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(@card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def pay
    Payjp.api_key = "sk_test_608b28bb0addb6bcaa776aa4"
    Payjp::Charge.create(
    :amount => @item.price,          #支払金額を引っ張ってくる
    :customer => @card.customer_id,  #顧客ID
    :currency => 'jpy',              #日本円
  )
  @item.update(buyer_id: current_user.id) 
  redirect_to action: 'done' #完了画面に移動
  end

  def done
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to action: 'show' 
  end

private

  def item_params
    params.require(:item).permit(:buyer_id)
  end


  def set_card
    @card = Card.where(user_id: current_user).first
  end
  
  def set_item
    @item = Item.find(params[:id])
  end

end