Rails.application.routes.draw do
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
get '/home' => 'site#index'
get '/adminpage' => 'profiles#adminpage'
get '/pricing' => 'site#pricing'
get 'aboutus' => 'site#aboutus'
get '/contact' => 'site#contactus'
get '/bookingmanagment' => 'bookings#managment'
 root to: 'site#index'


end
