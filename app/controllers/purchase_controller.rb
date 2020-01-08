class PurchaseController < ApplicationController
  require 'payjp'
  
  before_action :set_card
  before_action :set_item

  def item_confirm

  end

  def pay
    Payjp.api_key = 'sk_test_464a839cdfdcdb8b0ad6a778' # APIキーの呼び出し
      
    customer = Payjp::Customer.create(        # customerの定義、ここの情報を元に、カード情報との紐付けがされる
        description: 'test~~~~',                    # なくてもいいです
        email: current_user.email,              # なくてもいいです
        card: params[:payjp_token],            # 必須です
        metadata: {user_id: current_user.id}    # なくてもいいです
      )

    amount = @item.price
    Payjp::Charge.create(
    :amount => amount,
    :currency => 'jpy',
    :customer => customer.id,
    :description => '決済に関する説明'
)
  end

private

  def set_card
    @card = Card.where(user_id: current_user).first
  end
  
  def set_item
    @item = Item.find(params[:id])
  end

end