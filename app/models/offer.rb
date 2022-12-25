class Offer < ApplicationRecord
  
  has_and_belongs_to_many :categories

  mount_uploader :main_image, OffersImagesUploader
  mount_uploaders :images, ImageUploader
end
