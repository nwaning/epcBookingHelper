class Bookingnotifier < ActionMailer::Base
  default from: "booking@epcan.de"
  
  def send_booking(booking)
    @booking = booking
    mail(:to => "nw@epcan.de",
         :subject => "Neue Buchung: #{booking.nachname} #{booking.adresse} ")
  end
end
