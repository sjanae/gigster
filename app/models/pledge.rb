class Pledge < ActiveRecord::Base
  belongs_to :concert
  belongs_to :fans
  validates :price, presence: true

end
