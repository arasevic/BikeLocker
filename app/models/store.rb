class Store < ActiveRecord::Base
	has_many :days
	has_many :customers
	has_many :admins
	has_many :bicycles
	has_many :repairs
	has_many :work_orders
end
