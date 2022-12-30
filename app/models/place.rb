class Place < ApplicationRecord
  mount_uploader :main_image, OffersImagesUploader
  mount_uploaders :images, ImageUploader

  belongs_to :country
  belongs_to :state
  belongs_to :city

  belongs_to :user
end
