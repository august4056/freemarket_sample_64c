class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  # has_many :images, dependent: :destroy
  belongs_to :user
  # belongs_to :category_id


  has_many :images, dependent: :destroy

end
