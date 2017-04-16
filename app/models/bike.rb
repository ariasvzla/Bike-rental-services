class Bike < ApplicationRecord 
       #stablish a relationship between thee table bike bookings and users
	   has_many :users, through: :bookings
       has_many :bookings
       #allow table nest atribute example booking.bike.cagtegory
       accepts_nested_attributes_for :bookings
       accepts_nested_attributes_for :users
end
