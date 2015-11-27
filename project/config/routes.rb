Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'
   get  '/index' => 'doctor#index'
   get '/create' => 'doctor#create'
   post '/create_doctor' => 'doctor#create_doctor'
   get '/delete' => 'doctor#delete'
   get '/delete_doctor' => 'doctor#delete_doctor',as: :delete_event
   post '/delete_doctor' => 'doctor#delete_doctor'
  
   post '/create' => 'doctor#create'
   get  '/update' => 'doctor#update'
   get '/update_doctor' => 'doctor#update_doctor', as: :edit_event
   patch '/updated_doctor' => 'doctor#updated_doctor'
   get  '/patient_index' => 'patient#patient_index'
   get '/new' => 'patient#new'
   post '/create_patient' => 'patient#create_patient'
   get '/remove' => 'patient#remove'
   get '/delete_patient' => 'patient#delete_patient',as: :delete_patient_event
   post '/delete_patient' => 'patient#delete_patient'
   get '/edit' => 'patient#edit'
   get '/update_patient' => 'patient#update_patient',as: :edit_patient_event
   patch '/updated_patient' => 'patient#updated_patient'
   post '/new' => 'patient#new'
   get '/appointment_index' => 'appointment#appointment_index'
   get '/create_appointment' =>'appointment#create_appointment'
   post '/create_appointment' =>'appointment#create_appointment'
   post '/created_appointment' =>'appointment#created_appointment'
   get '/appointments' => 'appointment#appointments',as: :appointment_event_path
   post '/appointments' => 'appointment#appointments'
 
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
