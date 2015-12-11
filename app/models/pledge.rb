class Pledge < ActiveRecord::Base
	belongs_to :concert
	belongs_to :fan
end
