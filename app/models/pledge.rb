class Pledge < ActiveRecord::Base
  belongs_to :concert
  belongs_to :user, type: :fan
  validates :price, presence: true

  end

  


  