class Bicycle < ActiveRecord::Base
  belongs_to :store
  belongs_to :customer
  has_many :repairs
end
