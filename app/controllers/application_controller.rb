class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  # protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:address_phone_numbe,:phone_number,:nickname,:email, :family_name_kanji,:first_name_kanji, :family_name_kana, :first_name_kana, :address_family_name_kanji,:address_first_name_kanji,:address_family_name_kana,:address_first_name_kana, :address_number, :address_prefecture, :address_city, :address_block, :address_phone_number, :address_building ])
  end
end