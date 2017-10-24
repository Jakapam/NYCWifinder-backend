Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hotspots', to: 'hotspots#all'
  get '/boroughs/:borough', to: 'hotspots#boroughs'
  get '/neighborhoods/:neighborhood', to: 'hotspots#neighborhoods'
  get '/zipcodes/:zipcode', to: 'hotspots#zipcodes'
end
