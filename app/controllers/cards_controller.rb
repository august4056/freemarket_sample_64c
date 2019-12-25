class CardsController < ApplicationController
  require "payjp"

  def pay
    Payjp.api_key = 'pk_test_e62349859c2f9a2db51bfa9c'   #秘密鍵なので定義した環境変数を入れています。
    customer = Payjp::Customer.create(description: 'test', card: params[:payjp_token])   #まずは顧客を作成します。 descriptionは無くても顧客は作成出来ます。カードの作成です
    
    card = Card.new(
      pay_id: params[:pay_id],
      customer_id: customer.id,
      user_id: current_user.id
    )
    card.save
    redirect_to credit_path

  end

  def credit
    
  end
  
  def registration

  end
  
  def create
  
  end

  end
