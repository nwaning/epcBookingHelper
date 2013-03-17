class Availability < ActiveRecord::Base
  attr_accessible :FTTC, :FTTH, :Richtfunk, :WiMax, :istGebiet, :nr, :ort, :plz, :region_id, :street
  belongs_to :region
end
