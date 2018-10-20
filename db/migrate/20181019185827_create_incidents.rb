class CreateIncidents < ActiveRecord::Migration[5.1]
  def change
    create_table :incidents do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.integer :dayofweek
      t.date :timeofday
      t.string :state
      t.string :incidenttype
      t.string :drnum
      t.string :weatherevent
      t.string :specialevent
      t.float :latitude
      t.float :longitude
      t.text :comments

      t.timestamps
    end
  end
end
