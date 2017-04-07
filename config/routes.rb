Rails.application.routes.draw do
  get 'employees/index'

  get 'stores/index'

  get 'assignments/index'

  get 'assignments/create'

  get 'assignments/read'

  get 'assignments/update'

  get 'assignments/destroy'

  get 'employees/new'

  get 'employees/read'

  get 'employees/update'

  get 'employees/destroy'

  get 'stores/create'

  get 'stores/read'

  get 'stores/update'

  get 'stores/destroy'

  get 'creamery/privacy'

  get 'creamery/home'

  get 'creamery/aboutus'

  get 'creamery/contactus'

  get 'creamery/privacy'
  
  # Routes for main resources go here
  root 'creamery#home'

  # Semi-static page routes go he
  
  # Set the root url here

  
end
