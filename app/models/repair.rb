class Repair < ActiveRecord::Base
	belongs_to :bicycle
	belongs_to :customer
end
