class CreateScales < ActiveRecord::Migration
  def change
    create_table :scales do |t|
      t.string :name
      t.string :bezeichnung
      t.float :monatlich
      t.float :einmalig
      t.integer :region_id
      t.string :notiz

      t.timestamps
    end
  end
end
