Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  	namespace :v1 do
  		get "alpha_to_number" => "alpha_numeric#alpha_to_number"
  	end
  end

end
