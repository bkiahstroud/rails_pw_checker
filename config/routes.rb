Rails.application.routes.draw do
    get '/password' => 'password#check'
end
