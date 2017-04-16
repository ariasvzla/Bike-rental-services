Rails.application.routes.draw do
  resources :contacts
  resources :profiles

devise_for :users, controllers: {
        registrations: 'registrations/registrations',
        sessions: 'sessions/sessions'
      }
        resources :bikes

         resources :users do
           resources :bookings
          end
            resources :charges
       
         
        
       
         

    get '/summary' => 'bookings#summary'
  get '/stadistics' => 'profiles#stadistics'
get '/profilepage' => 'profiles#userprofilepage'
get '/home' => 'sites#index'
get '/adminpage' => 'profiles#adminpage'
get '/pricing' => 'sites#pricing'
get 'aboutus' => 'sites#aboutus'
get '/contact' => 'sites#contactus'
get '/howworks' => 'sites#howworks'
get '/bookingmanagment' => 'bookings#managment'
 root to: 'sites#index'


end
