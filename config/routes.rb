Rails.application.routes.draw do
  root 'conversions#index'
  post '/conversions/convert' => 'conversions#convert'
end
