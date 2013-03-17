class Scale < ActiveRecord::Base
  attr_accessible :bezeichnung, :einmalig, :monatlich, :name, :notiz, :region_id
  has_many :bookings
  belongs_to :region
end
