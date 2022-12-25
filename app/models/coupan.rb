class Coupan < ApplicationRecord
  mount_uploader :main_image, OffersImagesUploader
  mount_uploader :image, ImageUploader
end
