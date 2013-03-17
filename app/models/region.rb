class Region < ActiveRecord::Base
  attr_accessible :name, :notiz
  has_many :scales
  has_many :connectiontypes
  has_many :availabilities
end
