class BandSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :avatar_url, :genre, :video_url, :audio_url, :fanship, :concerts
end
