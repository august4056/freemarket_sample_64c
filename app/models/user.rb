class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

      validates :nickname, presence: { message: "入力してください" }, length: { maximum: 12, message: "ニックネームが長すぎます" }, uniqueness: { message: "既に存在するニックネームです" }
      validates :email, presence: true
      validate :family_name_kanji
      validate :first_name_kanji
      validate :family_name_kana
      validate :first_name_kana
      validates :birthdate_year, presence: true
      validates :birthdate_month, presence: true
      validates :birthdate_day, presence: true
      validate :phone_number
      validates :address_family_name_kanji, null: false
      validates :address_first_name_kanji, null: false
      validates :address_family_name_kana, null: false
      validates :address_first_name_kana, null: false
      validates :address_number, null: false
end
