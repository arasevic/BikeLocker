class Bicycle < ActiveRecord::Base
  belongs_to :customer
  has_many :repairs
end
