class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.float  :latitude
      t.float  :longitude
      t.string :name
<<<<<<< HEAD
      t.string :address
=======
      t.string :location
>>>>>>> fcaf512bd38307e6337f2c47bf5afb1d749d0c95

      t.timestamps
    end
  end
end
