class CardsController < ApplicationController
  skip_before_action :verify_authenticity_token

  require "payjp"
  before_action :set_card
  
  def pay
    sign_in User.find(params[:id]) unless user_signed_in?
    Payjp.api_key = 'sk_test_464a839cdfdcdb8b0ad6a778' # APIキーの呼び出し

      customer = Payjp::Customer.create(        # customerの定義、ここの情報を元に、カード情報との紐付けがされる
        description: 'test~~~~',                    # なくてもいいです
        # email: current_user.email,              # なくてもいいです
        card: params[:payjp_token],            # 必須です
        metadata: {user_id: current_user.id}    # なくてもいいです
      )

      @card = Card.new(                  # カードテーブルのデータの作成
        user_id: current_user.id,        # ここでcurrent_user.idがいるので、前もってsigninさせておく
        customer_id: customer.id,        # customerは上で定義
        card_id: customer.default_card   # .default_cardを使うことで、customer定義時に紐付けされたカード情報を引っ張ってくる ここがnullなら上のcustomerのcard: params['payjp_token']が読み込めていないことが多い
      )

      if @card.save
        redirect_to mypage_path
      else
        redirect_to action: "create"
      end
  end

  def credit
    
  end
  
  def registration

  end

  private

  def set_card
    @card = Card.where(user_id: current_user.id).first if Card.where(user_id: current_user.id).present?
  end

  end
