Rails.application.routes.draw do
  get "/query_line_parameter_url" => 'params_example#query_line_parameter_method'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
