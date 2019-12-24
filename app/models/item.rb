class Item < ApplicationRecord

  mount_uploader :image, ImageUploader
  
  # has_many :images, dependent: :destroy

  # belongs_to :user
  # belongs_to :category


  has_many :images, dependent: :destroy

end
