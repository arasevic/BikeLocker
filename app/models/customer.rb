class Customer < ActiveRecord::Base
	has_many :repairs
	has_many :bicycles
end
