class Profile < ApplicationRecord
#model profil stablish a relationship with the table user
  belongs_to :user
end
