class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_one :profile
         has_many :bikes, through: :bookings
         has_many :bookings
         accepts_nested_attributes_for :profile
         accepts_nested_attributes_for :bookings
         accepts_nested_attributes_for :bikes

end
