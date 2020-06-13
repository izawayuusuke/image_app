class Post < ApplicationRecord
  has_many :post_images, dependent: :destroy
  accepts_nested_attributes_for :post_images

  validates :title, presence: true
  mount_uploader :image, ImageUploader

end
