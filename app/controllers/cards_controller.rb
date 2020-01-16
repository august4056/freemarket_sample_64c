class CardsController < ApplicationController

  require "payjp"

  def new
    @card = Card.new
  end

  def create
    Payjp.api_key = 'sk_test_608b28bb0addb6bcaa776aa4'
    customer = Payjp::Customer.create(
      description: 'test',
      card: params["payjp_token"]
    )
    @card = Card.new(user_id:current_user.id,customer_id:customer.id,card_id:customer.cards.data[0].id)

    @card.save
    redirect_to card_path(current_user)
  end

  # def pay #payjpとCardのデータベース作成を実施します。
  #   Payjp.api_key = "pk_test_be40fbe98c439737c85c3f9f"
  #   if params['payjp-token'].blank?
  #     redirect_to action: "new"
  #   else
  #     customer = Payjp::Customer.create(
  #     description: '登録テスト', #なくてもOK
  #     email: current_user.email, #なくてもOK
  #     card: params['payjp-token'],
  #     metadata: {user_id: current_user.id}
  #     ) #念の為metadataにuser_idを入れましたがなくてもOK
  #     @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
  #     if @card.save
  #       redirect_to action: "show"
  #     else
  #       redirect_to action: "pay"
  #     end
  #   end
  # end

  def destroy #PayjpとCardデータベースを削除します
    card = Card.where(user_id: current_user.id).first
    if card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = "sk_test_608b28bb0addb6bcaa776aa4"
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
      Payjp.api_key = "sk_test_608b28bb0addb6bcaa776aa4"
      customer = Payjp::Customer.retrieve(card.customer_id)
      @card_information = customer.cards.retrieve(card.card_id)
    end
  end
end