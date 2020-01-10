class PurchaseController < ApplicationController



  def item_confirm
    Payjp.api_key = 'pk_test_e62349859c2f9a2db51bfa9c' # APIキーの呼び出し
    #保管した顧客IDでpayjpから情報取得
    customer = Payjp::Customer.retrieve(@card.customer_id)
    #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
    @default_card_information = customer.cards.retrieve(@card.card_id)
  end
  
  def pay
    Payjp.api_key = 'pk_test_e62349859c2f9a2db51bfa9c' # APIキーの呼び出し
    
    customer = Payjp::Customer.create(        # customerの定義、ここの情報を元に、カード情報との紐付けがされる
        description: 'test~~~~',                    # なくてもいいです
        email: current_user.email,              # なくてもいいです
        card: params[:payjp_token],            # 必須です
        metadata: {user_id: current_user.id}    # なくてもいいです
      )


end
  def done

  end

private

  def set_card
    @card = Card.where(user_id: current_user).first
  end
  
  def set_item
    @item = Item.find(params[:id])
  end

end
