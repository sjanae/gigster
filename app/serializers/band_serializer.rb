class BandSerializer < ActiveModel::Serializer
  attributes :id, :name, :email,:location, :avatar_url, :genre
end
