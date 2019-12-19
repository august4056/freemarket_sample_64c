class Item < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  # belongs_to :user
end
