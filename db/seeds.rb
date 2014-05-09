# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
File.open("#{Rails.root}/db/zip_code.csv") do |zip_codes|
  zip_codes.read.each_line do |zip_code|
    latitude, longitude, name, address = zip_code.chomp.split(",")
    #  to remove the quotes from the csv text:
    
    # to create each record in the database
    Place.create!(:latitude => latitude, :longitude =>longitude, :name => name, :address => address)             
  end
end

