class Category < ApplicationRecord
  # Asociations
  has_and_belongs_to_many :shops

  # Scopes
  scope :published, -> { where(active: true) }
end
