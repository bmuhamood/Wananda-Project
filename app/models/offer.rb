class Offer < ApplicationRecord
  belongs_to :user
  has_many :category

  mount_uploader :main_image, OffersImagesUploader
  mount_uploaders :images, ImageUploader
end
