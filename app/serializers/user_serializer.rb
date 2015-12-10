class UserSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :email, :location, :genre
end
