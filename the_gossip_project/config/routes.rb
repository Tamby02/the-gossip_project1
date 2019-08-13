Rails.application.routes.draw do
  get 'static_page/team' , to: 'static_page#team'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'static_page/contact' , to: 'static_page#contact'
 # get 'static_page/:first_name' , to: 'static_page#index'
  get 'static_page/' , to: 'static_page#show'
  get '/:id' , to: 'static_page#potin' #, as:'static_page_id' 
  get 'autor/:user_id' , to: 'static_page#autor' , as:"static_page_user_id" 
end
