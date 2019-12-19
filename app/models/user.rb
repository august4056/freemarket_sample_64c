class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

      validates :nickname, presence: { message: "入力してください" }, length: { maximum: 12, message: "ニックネームが長すぎます" }, uniqueness: { message: "既に存在するニックネームです" }
      validates :email, presence: true
      validate :fa_name_kanji
      validate :fa_name_kana
      validate :fi_name_kanji
      validate :fi_name_kana
      validates :year, presence: true
      validates :month, presence: true
      validates :day, presence: true   

  has_many :items, dependent: :destroy
  
end
