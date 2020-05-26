class Category < ApplicationRecord
  # Asociations
  has_and_belongs_to_many :shops
end
