class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :location, :venue, :success?, :band_id, :score
  
end
