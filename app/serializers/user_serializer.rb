class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :genre, :location, :type_of_user

  def genre
    object.band.genre if object.band
  end

  def location
    object.fan.location if object.fan
  end

  def type_of_user
    if object.band.present?
      "Band"
    elsif object.fan.present?
      "Fan"
    else
      "Legacy"
    end
  end

end
