class CreateConnectiontypes < ActiveRecord::Migration
  def change
    create_table :connectiontypes do |t|
      t.string :name
      t.string :bezeichnung
      t.integer :region_id

      t.timestamps
    end
  end
end
