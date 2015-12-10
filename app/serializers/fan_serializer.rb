class FanSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :email, :location, :avatar_url
end
