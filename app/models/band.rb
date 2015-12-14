class Band < User
<<<<<<< HEAD
  has_many :concert
=======
has_many :concerts

validates :name, :location, :type, presence: true
>>>>>>> d750d9b068de44787ae01bff4e6856a5a8082ea1


end
