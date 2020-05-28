class Api::V1::ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :schedule, :delivery_time, :facebook_url, :instagram_url, :web_url, :conditions_terms, :description, :user, :city, :payment_options, :order_options

  belongs_to :user
  belongs_to :city
  has_many :categories
end