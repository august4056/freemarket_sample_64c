class SignupController < ApplicationController
  before_action :save_step1, only: :step2
  before_action :save_step2, only: :step3
  before_action :save_step3, only: :create

  
  def step1
    @user = User.new
  end

  def save_step1
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:encrypted_password] = user_params[:encrypted_password]
    session[:password] = user_params[:password]
    session[:password] = user_params[:password]
    session[:family_name_kanji] = user_params[:family_name_kanji]
    session[:first_name_kanji] = user_params[:first_name_kanji]
    session[:family_name_kana] = user_params[:family_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
  end

  def step2
    @user = User.new
  end

  def save_step2
    session[:phone_number] = user_params[:phone_number]
  end

  def step3
    @user = User.new
  end

  def save_step3
    session[:address_family_name_kanji] = user_params[:address_family_name_kanji]
    session[:address_first_name_kanji] = user_params[:address_first_name_kanji]
    session[:address_family_name_kana] = user_params[:address_family_name_kana]
    session[:address_first_name_kana] = user_params[:address_first_name_kana]
    session[:address_number] = user_params[:address_number]
    session[:address_prefecture] = user_params[:address_prefecture]
    session[:address_city] = user_params[:address_city]
    session[:address_block] = user_params[:address_block]
    session[:address_building] = user_params[:address_building]
    session[:address_phone_number] = user_params[:address_phone_number]
  end
    
  def create
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      encrypted_password: session[:encrypted_password],
      password: session[:password],
      family_name_kanji: session[:family_name_kanji],
      first_name_kanji: session[:first_name_kanji],
      family_name_kana: session[:family_name_kana],
      first_name_kana: session[:first_name_kana],
      phone_number: session[:phone_number],
      address_family_name_kanji: session[:address_family_name_kanji],
      address_first_name_kanji: session[:address_first_name_kanji],
      address_family_name_kana: session[:address_family_name_kana],
      address_first_name_kana: session[:address_first_name_kana],
      address_number: session[:address_number],
      address_prefecture: session[:address_prefecture],
      address_city: session[:address_city],
      address_block: session[:address_block],
      address_building: session[:address_building],
      address_phone_number: session[:address_phone_number]
    )
    if @user.save!
      session[:id] = @user.id
      redirect_to complete_signup_index_path
    else
      render 'signup/step1'
    end
  end

  def complete 
    sign_in User.find(session[:id]) unless user_signed_in?
  end


  private 

  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :encrypted_password,
      :password,
      :family_name_kanji,
      :first_name_kanji,
      :family_name_kana,
      :first_name_kana,
      :phone_number,
      :address_family_name_kanji,
      :address_first_name_kanji,
      :address_family_name_kana,
      :address_first_name_kana,
      :address_number,
      :address_prefecture,
      :address_city,
      :address_block,
      :address_building,
      :address_phone_number
  )
  end
end

