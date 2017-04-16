class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise add this lines of code automatically when the devise user is created 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         #stablish relationship with the tabl profile
         has_one :profile
         #stablish relationship with table booking and bike using the through association
         has_many :bikes, through: :bookings
         has_many :bookings
         # the user model allow nested associations from tables below
         accepts_nested_attributes_for :profile
         accepts_nested_attributes_for :bookings
         accepts_nested_attributes_for :bikes

end
