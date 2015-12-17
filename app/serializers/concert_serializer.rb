class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :location, :venue, :performance_date, :funding_goal, :pledges, :status
  
end
