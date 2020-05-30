class UserSerializer < ActiveModel::Serializer
  attributes :id
  attributes :email
  attributes :jti
end