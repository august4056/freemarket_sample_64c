class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :category
  belongs_to :brand
  belongs_to :user

  mount_uploader :image, ImageUploader
end
