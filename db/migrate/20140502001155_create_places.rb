class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.float  :latitude
      t.float  :longitude
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
