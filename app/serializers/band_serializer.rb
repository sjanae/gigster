class BandSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :email, :location, :avatar_url, :genre
end
