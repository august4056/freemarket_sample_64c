class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  belongs_to :category
end
