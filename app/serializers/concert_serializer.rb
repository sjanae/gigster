class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :location, :venue, :pledge, :status, :performance_date, :funding_goal
end
