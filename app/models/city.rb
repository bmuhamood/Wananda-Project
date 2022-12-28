class City < ApplicationRecord
  # Associations
  belongs_to :state

  # Validations
  validates :name, presence: true
end
