class PledgeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :concert_id, :price
end
