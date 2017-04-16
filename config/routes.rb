Rails.application.routes.draw do
  resources :contacts
  resources :profiles
#devise was modified to control user sessions and registrations
devise_for :users, controllers: {
        registrations: 'registrations/registrations',
        sessions: 'sessions/sessions'
      }
       #routes for bikes
        resources :bikes
        #routes for users
         resources :users do
           resources :bookings
          end

        resources :charges   
# route for showing summary
get '/summary' => 'bookings#summary'
post '/paymentdone' => 'bookings#paymentdone'
get '/stadistics' => 'profiles#stadistics'
get '/profilepage' => 'profiles#userprofilepage'
get '/home' => 'sites#index'
get '/bookings' => 'profiles#adminpage'
get '/pricing' => 'sites#pricing'
get 'aboutus' => 'sites#aboutus'
get '/contact' => 'sites#contactus'
get '/howworks' => 'sites#howworks'
get '/bookingmanagment' => 'bookings#managment'
      #root path
       root to: 'sites#index'


end
