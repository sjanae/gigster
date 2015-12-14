class Band < User
has_many :concerts

validates :name, :location, :type, presence: true


end
