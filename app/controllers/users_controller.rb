class UsersController < ApplicationController

  layout "users"
  
  def new
  end

  def info
  end

  def registration
  end

  def login
  end

  def item_confirm
    render :layout  => "application"
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
      amount: 809, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end

  
  def confirm
  end

  def address
  end

  def payment
  end

  def complete
  end  


end
