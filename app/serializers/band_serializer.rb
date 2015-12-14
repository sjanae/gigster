class BandSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :avatar_url, :genre
end
