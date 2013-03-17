class Connectiontype < ActiveRecord::Base
  attr_accessible :bezeichnung, :name, :region_id
  has_many :bookings
  belongs_to :region
end
