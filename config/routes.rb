Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  namespace :forest do
    post '/actions/approve-pan' => 'cars#approve_pan'
    post '/actions/reject-pan' => 'cars#reject_pan'
    post '/actions/approve-gst' => 'cars#approve_gst'
    post '/actions/reject-gst' => 'cars#reject_gst'
    post '/actions/approve-arn' => 'cars#approve_arn'
    post '/actions/reject-arn' => 'cars#reject_arn'
  end

  resources :cars

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
