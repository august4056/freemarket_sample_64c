class CardsController < ApplicationController
  skip_before_action :verify_authenticity_token

  require "payjp"

  def pay
    # Payjp.api_key = 'sk_test_464a839cdfdcdb8b0ad6a778'   #秘密鍵なので定義した環境変数を入れています。
    # customer = Payjp::Customer.create(description: 'test', card: params[:payjp_token])   #まずは顧客を作成します。 descriptionは無くても顧客は作成出来ます。カードの作成です
    
    # card = Card.create
    
    # (
    #   # pay_id: params[:pay_id],
    #   # customer_id: customer.id,
    #   # user_id: current_user.id
    # )
    # card.save
    # redirect_to credit_path
    sign_in User.find(params[:id]) unless user_signed_in?
    Payjp.api_key = 'sk_test_464a839cdfdcdb8b0ad6a778' # APIキーの呼び出し
    # if params['payjp_token'].blank? # ここはJavaScriptの.append()内のname属性です
    #   render '/signup/step4'
    # else
      customer = Payjp::Customer.create(        # customerの定義、ここの情報を元に、カード情報との紐付けがされる
        description: 'test~~~~',                    # なくてもいいです
        email: current_user.email,              # なくてもいいです
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
  

  end
