class Offer < ApplicationRecord
  
  belongs_to :category

  mount_uploader :main_image, OffersImagesUploader
  mount_uploaders :images, ImageUploader
end
