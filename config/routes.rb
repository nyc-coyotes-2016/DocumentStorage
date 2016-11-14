Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get '/documents' => "documents#my_index"
resources :documents
end
