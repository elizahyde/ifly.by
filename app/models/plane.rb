class Plane < ActiveRecord::Base
  has_many :flights

  attr_accessible :plane_model, :row, :column
end
