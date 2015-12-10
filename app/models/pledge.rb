class Pledge < ActiveRecord::Base
	belongs_to :concert
	belongs_to :user, type: :fan
end
