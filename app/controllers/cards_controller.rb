class CardsController < ApplicationController

  require "payjp"

  def new
    @card = Card.new
  end

  def create
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    customer = Payjp::Customer.create(
      description: 'test',
      card: params["payjp_token"]
    )
    @card = Card.new(user_id:current_user.id,customer_id:customer.id,card_id:customer.cards.data[0].id)

    @card.save
    redirect_to card_path(current_user)
  end

  def destroy #PayjpとCardデータベースを削除します
    card = Card.where(user_id: current_user.id).first
    if card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
      redirect_to card_path
    end
  end

  def show #Cardのデータpayjpに送り情報を取り出します
    card = Card.where(user_id:current_user.id).first
    if card.blank?
      render  "/cards/show" 
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @card_information = customer.cards.retrieve(card.card_id)
    end
  end
end