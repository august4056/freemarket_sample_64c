class Item < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :images, dependent: :destroy
  # belongs_to :category_id

end
