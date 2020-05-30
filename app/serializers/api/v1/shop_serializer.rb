class Api::V1::ShopSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name
  attributes :address
  attributes :schedule
  attributes :delivery_time
  attributes :facebook_url
  attributes :instagram_url
  attributes :web_url
  attributes :conditions_terms
  attributes :description
  attributes :active
  attributes :payment_options
  attributes :order_options

  belongs_to :user
  belongs_to :city
  has_many :categories
end