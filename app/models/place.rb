class Place < ApplicationRecord
  mount_uploader :main_image, OffersImagesUploader
  mount_uploaders :images, ImageUploader
end
