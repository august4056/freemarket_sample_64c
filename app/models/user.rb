class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable,omniauth_providers: [:facebook, :google_oauth2]

  def self.find_oauth(auth)
    uid = auth.uid
    provider = auth.provider
    snscredential = SnsCredential.where(uid: uid, provider: provider).first
    if snscredential.present?
      user = User.where(id: snscredential.user_id).first
    else
      user = User.where(email: auth.info.email).first
      if user.present?
        SnsCredential.create(
          uid: uid,
          provider: provider,
          user_id: user.id
          )
      else
        user = User.create(
          nickname: auth.info.name,
          email:    auth.info.email,
          password: Devise.friendly_token[0, 20],
          telephone: ""
          )
        SnsCredential.create(
          uid: uid,
          provider: provider,
          user_id: user.id
          )
      end
    end
    return user
  end

      validates :nickname, presence: { message: "入力してください" }, length: { maximum: 12, message: "ニックネームが長すぎます" }, uniqueness: { message: "既に存在するニックネームです" }
      validates :email, presence: true
      # validate :fa_name_kanji
      # validate :fa_name_kana
      # validate :fi_name_kanji
      # validate :fi_name_kana
      # validates :year, presence: true
      # validates :month, presence: true
      # validates :day, presence: true   

  has_many :items, dependent: :destroy
  has_many :users
  has_many :sns_credentials
  has_many :cards, dependent: :destroy
end
