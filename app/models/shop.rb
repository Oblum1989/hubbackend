class Shop < ApplicationRecord
  # Asociations
  belongs_to :user
  belongs_to :city
  has_and_belongs_to_many :categories
end
