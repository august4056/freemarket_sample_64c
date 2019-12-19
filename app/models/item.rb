class Item < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :images, dependent: :destroy
  belongs_to :user

  mount_uploader :image, ImageUploader
end
