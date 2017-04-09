Rails.application.routes.draw do

  resources :assignments
  resources :stores
  resources :employees
 

  get 'stores/index' 
  get 'stores/edit'
  get 'stores/new'
  get 'stores/show'


  get 'employees/index'
  get 'employees/edit'
  get 'employees/new'
  get 'employees/show'


  get 'assignments/index' 
  get 'assignments/edit'
  get 'assignments/new'
  get 'assignments/show'
  
  get 'creamery/privacy' , as: 'privacy'

  get 'creamery/home' 

  get 'creamery/aboutus' , as: 'about'

  get 'creamery/contactus', as: 'contact'

  
  # Routes for main resources go here
  root 'creamery#home'

  # Semi-static page routes go he
  
  # Set the root url here

  
end
