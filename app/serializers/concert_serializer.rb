class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :location, :venue, :success
  
end