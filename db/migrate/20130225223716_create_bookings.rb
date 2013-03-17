class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :nachname
      t.string :vorname
      t.string :adresse
      t.string :hausnummer
      t.integer :plz
      t.string :ort
      t.string :telefon
      t.string :email
      t.string :mobil
      t.date :geburtsdatum
      t.integer :scale_id
      t.integer :connectiontyp_id

      t.timestamps
    end
  end
end
