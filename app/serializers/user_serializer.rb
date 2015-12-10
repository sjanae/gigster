class UserSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :email, :location, :fan_id, :band_id, :genre, :avatar_url
end
