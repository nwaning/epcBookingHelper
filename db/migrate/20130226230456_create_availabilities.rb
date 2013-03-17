class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :street
      t.string :nr
      t.integer :region_id
      t.integer :FTTC
      t.integer :FTTH
      t.integer :WiMax
      t.integer :Richtfunk
      t.integer :istGebiet
      t.string :plz
      t.string :ort

      t.timestamps
    end
  end
end
