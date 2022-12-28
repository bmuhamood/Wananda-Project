class State < ApplicationRecord
  # Associations
  belongs_to :country

  # Validations
  validates :name, presence: true
end
