class Booking < ActiveRecord::Base
  attr_accessible :adresse, :connectiontyp_id, :email, :geburtsdatum, :hausnummer, :mobil, :nachname, :ort, :plz, :scale_id, :telefon, :vorname
  belongs_to :scale
  belongs_to :connectiontyp
  
  after_create :send_notimail
  
  private
  
  def send_notimail
    Bookingnotifier.send_booking(self).deliver
  end
end
