class FanSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :email, :location, :avatar
end
