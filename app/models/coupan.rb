class Coupan < ApplicationRecord

  belongs_to :user
  
  mount_uploader :main_image, OffersImagesUploader
  mount_uploader :image, ImageUploader
end
