class Booking < ApplicationRecord
	belongs_to :user
    belongs_to :bike
    accepts_nested_attributes_for :bike
    accepts_nested_attributes_for :user
   def self.search(search)
   	Booking.joins(:user).where("email LIKE ?","%#{search}%")
   end

end