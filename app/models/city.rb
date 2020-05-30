class City < ApplicationRecord
  # Asociations
  has_many :shops

  # Scopes
  scope :published, -> { where(active: true) }
end
