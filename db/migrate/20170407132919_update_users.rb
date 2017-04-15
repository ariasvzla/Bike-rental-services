class UpdateUsers < ActiveRecord::Migration[5.0]
  def change

  	@u = User.find_by( email: 'ad@admin.ie' )
# if there is no user with the email admin@email.ie
# in the users table the above find_by() method will return nil
# nil shows there is no record in the table with that email
	if @u == 'ad@admin.ie'
 	@u.update_attribute :admin, true
	end
  end
  end

