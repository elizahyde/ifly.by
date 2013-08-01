class Plane < ActiveRecord::Base
  has_many :flights

  attr_accessible :plane_name, :row, :column
end
