class WorkOrder < ActiveRecord::Base
  belongs_to :customer
  has_many :repairs
  has_many :bicycles
end
