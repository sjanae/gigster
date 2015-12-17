class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :location, :venue, :pledges, :status, :performance_date, :funding_goal
end
