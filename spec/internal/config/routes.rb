Rails.application.routes.draw do
  match "test" => "test_models#test"
  resource :test_models
end
