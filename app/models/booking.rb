class Booking < ApplicationRecord
	#the table belongs to the two mdels user and bike to make a booking requires both
	belongs_to :user
    belongs_to :bike
    #nest the table booking with bike and user
    accepts_nested_attributes_for :bike
    accepts_nested_attributes_for :user
    #a join to allow administrator search booking by email
   def self.search(search)
   	Booking.joins(:user).where("email LIKE ?","%#{search}%")
   end

end